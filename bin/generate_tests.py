#!/usr/bin/env python

"""Test generator v1."""

import argparse
import datetime
import json
import os
import pathlib
import re
import subprocess
import sys
import tomllib

import jinja2


def problem_spec_dir() -> pathlib.Path:
    """Detect and return the problem specs."""
    cache_dir = os.getenv("XDG_CACHE_HOME", os.getenv("HOME") + "/.cache")
    specs = pathlib.Path(cache_dir) / "exercism/configlet/problem-specifications"
    if specs.exists():
        return specs
    cur = pathlib.Path(os.getcwd())
    for i in cur.parents:
        if i.name == "problem-specifications":
            return i
    raise LookupError("Could not find problem specs")


def flatten_cases(cases: list[dict]) -> list[tuple[list[str], dict]]:
    """Recursive flatten test cases, returning individual cases with parent descriptions."""
    for case_or_group in cases:
        if "cases" in case_or_group:
            for groups, child_case in flatten_cases(case_or_group["cases"]):
                yield ([case_or_group["description"]] + groups, child_case)
        else:
            yield ([], case_or_group)


def get_cases(specs: pathlib.Path, exercise: pathlib.Path) -> list[dict]:
    """Return flattened, filtered cases with additional metadata attached."""
    canonical_path = specs / "exercises" / exercise.name / "canonical-data.json"
    with open(canonical_path, "r", encoding="utf-8") as f:
        canonical = json.load(f)
    with open(exercise / ".meta" / "tests.toml", "rb") as f:
        tests = tomllib.load(f)

    reimplemented = {
        test["reimplements"]
        for test in tests.values()
        if test.get("include", True) and "reimplements" in test
    }
    cases = []
    for groups, case in flatten_cases(canonical["cases"]):
        # Filter out test cases with include=false or not listed.
        if case["uuid"] not in tests or case["uuid"] in reimplemented:
            continue
        if not tests[case["uuid"]].get("include", True):
            continue
        cases.append(add_metadata(groups, case))
    cases.extend(additional_cases(exercise))
    for index, case in enumerate(cases):
        case["test_keyword"] = "it" if index == 0 else "xit"
    return cases


def additional_cases(exercise: pathlib.Path) -> list[dict]:
    """Return the track-specific cases of an exercise, if it has any."""
    path = exercise / ".meta" / "additional-test-cases.json"
    if not path.exists():
        return []
    with open(path, "r", encoding="utf-8") as f:
        additional = json.load(f)
    return [add_metadata(groups, case) for groups, case in flatten_cases(additional)]


def add_metadata(groups: list[str], case: dict) -> dict:
    """Attach descriptions and error expectations to a case."""
    case["descriptions"] = groups + [case["description"]]
    case["expect_error"] = isinstance(case["expected"], dict) and "error" in case["expected"]
    if case["expect_error"]:
        case["expect_error_msg"] = case["expected"]["error"]
    return case


def retrieve_displayed_name(slug: str) -> str:
    """Return the human-readable name for an exercise slug."""
    config_text = pathlib.Path("config.json").read_text()
    config_data = json.loads(config_text)
    for exercises in config_data["exercises"].values():
        for exercise in exercises:
            if exercise["slug"] == slug:
                return exercise["name"]


def group_cases(cases: list[dict]) -> list[dict]:
    """Return test cases arranged by their parent descriptions."""
    root = {"groups": [], "cases": []}
    for case in cases:
        group = root
        for description in case["descriptions"][:-1]:
            for child in group["groups"]:
                if child["description"] == description:
                    group = child
                    break
            else:
                child = {"description": description, "groups": [], "cases": []}
                group["groups"].append(child)
                group = child
        group["cases"].append(case)
    return root["groups"]


def filter_tojson(data, separators=(',', ':'), indent=None) -> str:
    """Filter `tojson` that JSON encodes a string with flexible settings."""
    return json.dumps(data, separators=separators, indent=indent)


def filter_quote(data) -> str:
    """Render JSON-compatible data as an idiomatic CoffeeScript literal."""
    if isinstance(data, dict):
        return "{ " + ", ".join(f"{filter_quote(key)}: {filter_quote(value)}" for key, value in data.items()) + " }"
    if isinstance(data, list):
        return "[" + ", ".join(filter_quote(value) for value in data) + "]"
    if data is True:
        return "true"
    if data is False:
        return "false"
    if data is None:
        return "null"
    return json.dumps(data)


def filter_remove_spaces(data: str) -> str:
    """Remove spaces for use as an identifier."""
    return data.replace(" ", "")


def filter_format_multiline_list(data: list, indent: int = 0) -> str:
    """Render a CoffeeScript list with one item per line."""
    lines = ["["]
    for datum in data:
        lines.append(f"  {' ' * indent}{filter_quote(datum)}")
    lines.append(" " * indent + "]")
    return "\n".join(lines)


def jinja_env(exercise: pathlib.Path) -> jinja2.Environment:
    """Return a configured Jinja env with filters added."""
    env = jinja2.Environment(
        loader=jinja2.FileSystemLoader(exercise / ".meta"),
        trim_blocks=True,
        lstrip_blocks=True,
    )
    # JSON formatting, default to compact form (`jq -c`).
    env.filters["tojson"] = filter_tojson
    # CoffeeScript literal formatting.
    env.filters["quote"] = filter_quote
    env.filters["remove_spaces"] = filter_remove_spaces
    env.filters["format_multiline_list"] = filter_format_multiline_list
    # String escaping, ANSI-C style.
    env.filters["repr"] = repr
    # Return a dict with only specified keys kepts.
    env.filters["camel_to_snake"] = lambda x: re.sub(r"([a-z])([A-Z])", (lambda m: f"{m.group(1)}_{m.group(2).lower()}"), x)
    return env


def generate(specs: pathlib.Path, exercise: pathlib.Path) -> None:
    """Generate and write test file for a given spec and exercise."""
    slug = exercise.name
    cases = get_cases(specs, exercise)

    timestamp = datetime.datetime.now(tz=datetime.UTC).replace(microsecond=0).isoformat()
    header = f"""# These tests are auto-generated with test data from:
# https://github.com/exercism/problem-specifications/blob/main/exercises/{slug}/canonical-data.json
# File last updated on {timestamp}"""
    data = {
        "cases": cases,
        "groups": group_cases(cases),
        "header": header,
        "solution": json.loads((exercise / ".meta/config.json").read_text())["files"]["solution"][0],
        "exercise_slug": slug,
        "exercise_name": retrieve_displayed_name(slug),
    }

    # Render the template.
    try:
        template = jinja_env(exercise).get_template("template.j2")
        out = template.render(data).strip()
    except jinja2.exceptions.TemplateAssertionError as e:
        e.add_note(f"Error rendering template for {exercise.name}")
        raise

    # Check for changes or the lack thereof.
    test_file = exercise / json.loads((exercise / ".meta/config.json").read_text())["files"]["test"][0]
    if test_file.exists():
        old_content = [i for i in test_file.read_text().strip().splitlines() if "generated on" not in i]
        new_content = [i for i in out.splitlines() if "generated on" not in i]
        if old_content == new_content:
            return

    # Write the test file.
    test_file.write_text(out + "\n")


def argparser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--no-pull",
        action="store_false",
        dest="pull",
        help="Do not run `git pull` on the problem specs repo",
    )
    parser.add_argument(
        "exercises",
        nargs="*",
        help="exercises to generate tests; if none supplied, generate all"
    )
    return parser


def main():
    """Main entrypoint."""
    specs = problem_spec_dir()
    args = argparser().parse_args()
    if args.pull:
        subprocess.check_call(["git", "pull"], cwd=specs)
    exercises = args.exercises
    # Generate all exercises with templates if none are specified as args.
    if not exercises:
        exercises = [
            i.parent.parent
            for i in pathlib.Path("exercises/practice").glob("*/.meta/template.j2")
        ]
    else:
        # Turn strings to paths and make them relative to the practice exercises.
        out = []
        practice = pathlib.Path("exercises/practice")
        for exercise in exercises:
            path = pathlib.Path(exercise)
            if not path.is_relative_to(practice):
                path = practice / path
            out.append(path)
        exercises = out

    for exercise in exercises:
        exercise_path = pathlib.Path(exercise)
        if not exercise_path.exists():
            raise ValueError(f"Exercise {exercise_path} does not exist")
        generate(specs, exercise_path)


if __name__ == "__main__":
    main()

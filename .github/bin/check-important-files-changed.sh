#!/usr/bin/env bash

# TODO: check if the PR doesn't already have the magic marker

declare -a important_files_changed
important_files_jq_query='[.files.test + .files.invalidator + .files.editor][] | index($file) != null'

for file in $(gh pr diff --name-only); do
  if [[ "${file}" =~ ^(exercises/(concept|practice)/[^/]+)/(.+)$ ]]; then
    dir=${BASH_REMATCH[1]}
    relative_file=${BASH_REMATCH[3]}
    meta_config_file="${dir}/.meta/config.json"

    if jq -e --arg file "${relative_file}" "${important_files_jq_query}" "${meta_config_file}" > /dev/null; then
      important_files_changed+=("${file}")      
    fi
  fi
done

if [ ${#important_files_changed[@]} > 0 ]; then
    echo "This PR changes the following files, which could potentially influence test results:"
    echo ""
    printf "\055 %s\n" "${important_files_changed[@]}"
    echo ""
    echo "If this PR is merged _as is_, it will trigger the latest published iteration of students' solutions of _all_ exercises in this PR to be re-tested."
    echo "This is an expensive operation."
    echo "Therefore, if you know that the above changes won't affect the test outcome of existing solutions, please add the text \`[no important files changed]\` into the PR's commit body."
    echo "This will cause us to skip re-running the tests for the existing solutions to the exercises changed in this PR, saving precious resources."
fi
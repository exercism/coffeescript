#!/usr/bin/env bash

test_run() {
    dic=$(mktemp -d)
    trap 'rm -r "$dic"' EXIT
    echo "Testing $1"
    source_file="$(jq -r '.files.solution[0]' "$1/.meta/config.json")"
    test_file="$(jq -r '.files.test[0]' "$1/.meta/config.json")"
    echo "source_file: ${source_file}"
    cat "$1/.meta/example.coffee" > "${dic}/${source_file}"
    cat "$1/${test_file}" > "${dic}/${test_file}"
    sed -i -e 's/xit/it/g' "${dic}/${test_file}"
    jasmine-node --coffee "${dic}/${test_file}" || exit 1
}

if [ -n "$1" ] && [ -d "$1" ]; then
    # test one exercise
    test_run "$1"
else
    # test them all
    for exercise in ./exercises/practice/*; do
        test_run "${exercise}"
    done

    if [ -d "./exercises/concept" ]; then
        for exercise in ./exercises/concept/*; do
            test_run "${exercise}"
        done
    fi
fi

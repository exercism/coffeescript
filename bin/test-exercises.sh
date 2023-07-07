dic=$(mktemp -d)
mkdir -p "${dic}"

test_run() {
    echo "Testing $1"
    source_file="$1/$(jq -r '.files.solution[0]' $1/.meta/config.json)"
    test_file="$1/$(jq -r '.files.test[0]' $1/.meta/config.json)"
    cat "$1/.meta/example.coffee" > "${dic}/${source_file}"
    cat "${test_file}" > "${dic}/${test_file}"
    sed -i -e 's/xit/it/g' ${dic}/${test_file}
    jasmine-node --coffee "${dic}/${test_file}" || exit 1
}

for exercise in ./exercises/practice/*; do
    test_run ${exercise} 
done

if [ -d "./exercises/concept" ]; then
    for exercise in ./exercises/concept/*; do
        test_run ${exercise}
    done
fi
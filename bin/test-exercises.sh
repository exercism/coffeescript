dic=$(mktemp -d)
mkdir -p "${dic}/src"
mkdir -p "${dic}/spec"
echo $(crystal -v)

test_run() {
    echo "Testing $1"
    cat "$1/.meta/src/$2.cr" > "${dic}/src/$2.cr"
    spec_file="$1/$(jq -r '.files.test[0]' $1/.meta/config.json)"
    cat "${spec_file}" > "${dic}/spec/spec.cr"
    sed -i -e 's/xit/it/g' ${dic}/spec/spec.cr
    jasmine-node --coffee *spec* || exit 1
}

for exercise in ./exercises/practice/*; do
    test_run ${exercise} "example"
done

if [ -d "./exercises/concept" ]; then
    for exercise in ./exercises/concept/*; do
        test_run ${exercise} "exemplar"
    done
fi
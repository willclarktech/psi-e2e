#!/bin/bash
set -o errexit -o nounset -o pipefail
command -v shellcheck > /dev/null && shellcheck "$0"

TEST_DIR="../../tests"
TEST_NAME="export_output"

echo "Test: JS and Python exports should be equal"

js_output=$(
    cd submodules/psi.js
    node --eval="$(cat $TEST_DIR/$TEST_NAME.js)" | jq --compact-output --sort-keys '.'
)


python_output=$(
    cd submodules/PyPSI
    python -c "$(cat $TEST_DIR/$TEST_NAME.py)" | jq --compact-output --sort-keys '.'
)

if cmp <(echo "$js_output") <(echo "$python_output"); then
    echo "PASS"
    exit 0
else
    echo "FAIL"
    echo "JS output: $js_output"
    echo "Python output: $python_output"
    exit 1
fi

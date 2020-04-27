#!/bin/bash
set -o errexit -o nounset -o pipefail
command -v shellcheck > /dev/null && shellcheck "$0"

git submodule update --init

SUBMODULES_DIR="submodules"
JS_DIR="psi.js"
PYTHON_DIR="PyPSI"

(
    echo "Setting up ${JS_DIR}"
    cd "${SUBMODULES_DIR}/${JS_DIR}"
    yarn
    yarn build
)

(
    echo "Setting up ${PYTHON_DIR}"
    cd "${SUBMODULES_DIR}/${PYTHON_DIR}"
    pip install .
)

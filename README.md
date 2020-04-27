# psi-e2e

**Note: Run all scripts and tests from the root directory.**

## Pre-requisites

-   [jq](https://stedolan.github.io/jq/)
-   [Node.js](https://nodejs.org/)
-   [Yarn](https://yarnpkg.com/)
-   [Python 3 and pip](https://www.python.org/)

## Installation

This script initializes the submodules, including installation and build steps:

```sh
./scripts/install.sh
```

## Update

Run this script when you want to incorporate remote changes to the submodules:

```sh
./scripts/update_submodules.sh
```

## Test

Proof-of-concept end-to-end test for equality of Bloom filter serialization between [psi.js](https://github.com/OpenMined/psi.js) and [PyPSI](https://github.com/OpenMined/PyPSI). The functionality is currently mocked as we don't have an implementation yet.

```sh
./tests/export_output.sh
```

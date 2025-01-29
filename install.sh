#!/bin/sh

# Install dependencies
virtualenv -p python3 ./.venv
# shellcheck source=/dev/null
. ./.venv/bin/activate
pip install --upgrade pip
pip list
deactivate

# # Run the script
# . ./.venv/bin/activate
# uvx --version
# deactivate

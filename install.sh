#!/bin/sh

# # Install dependencies
# virtualenv -p python3 ./.venv
# # shellcheck source=/dev/null
# . ./.venv/bin/activate
# pip install --upgrade pip
# pip list
# deactivate

# Load environment variables from .env file
if [ -f .env ]; then
  # shellcheck source=/dev/null
  . .env
fi

# Run the script
# shellcheck source=/dev/null
. ./.venv/bin/activate
uvx --version
echo "$TAVILY_API_KEY"
deactivate

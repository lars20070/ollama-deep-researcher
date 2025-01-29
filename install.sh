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
# Installs 'langgraph-cli' package with 'inmem' extra
# Runs 'dev' command from the 'langgraph-cli' package which starts the LangGraph server
uvx --refresh --from "langgraph-cli[inmem]" --with-editable . --python 3.11 langgraph dev
# Local LangGraph API server
# (handles the actual research logic, ollama interactions, Tavily API calls, state management, graph execution)
# http://127.0.0.1:2024
# http://127.0.0.1:2024/docs
# Smith LangGraph Studio
# (handles graph visualization, config settings, execution monitoring, results display)
# Note open the link below in Chrome and not Safari
# https://smith.langchain.com/studio/?baseUrl=http://127.0.0.1:2024
deactivate

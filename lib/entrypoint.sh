#!/bin/sh
set -e

if [ -n "${GITHUB_WORKSPACE}" ]; then
  cd "${GITHUB_WORKSPACE}" || exit
fi

export REVIEWDOG_GITHUB_API_TOKEN="${INPUT_GITHUB_TOKEN}"

# Remove disabled gems from configuration
/action/lib/configure

# Execute reviewdog with its configuration
reviewdog -conf=/action/lib/.reviewdog.yml -reporter=github-check

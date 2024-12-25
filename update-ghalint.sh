#!/usr/bin/env bash

set -euo pipefail

org=$1
if [ "$org" = suzuki-shunsuke ]; then
	gh search prs "suzuki-shunsuke/ghalint to v1.2.0 user:suzuki-shunsuke" --author app/renovate --json url --jq '.[].url' | xargs -n 1 gh pr update-branch
	exit 0
fi

gh search prs "suzuki-shunsuke/ghalint to v1.2.0 org:$1" --author app/renovate --json url --jq '.[].url' | xargs -n 1 gh pr update-branch

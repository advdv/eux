#!/usr/bin/env bash
#MISE description="Check generated code is checked-in"
#MISE depends=["dev:fmt", "dev:gen", "check:lint"]
set -euo pipefail

if [[ "${CI:-false}" == "true" ]]; then
	changes=$(git status --porcelain)
	if [[ -n "$changes" ]]; then
		echo "ERROR: Code is not up to date."
		echo "Run generating tasks locally and commit the changes."
		echo
		echo "$changes"
		exit 1
	fi
fi

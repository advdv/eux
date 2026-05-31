#!/usr/bin/env bash
#MISE description="Lint the code base"
#MISE depends=["dev:gen"]
set -euo pipefail
find .mise-tasks -name '*.sh' -type f -print0 | xargs -0 shellcheck
golangci-lint config verify
golangci-lint run ./...

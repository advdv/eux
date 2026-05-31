#!/usr/bin/env bash
#MISE description="Format all code in the project"
#MISE depends=["dev:gen"]
set -euo pipefail
go mod tidy                             # go.mod file
golangci-lint fmt                       # go files
shfmt -w .mise-tasks/**/*.sh            # shell scripts
taplo fmt                               # toml files
prettier --write "**/*.{yml,yaml,json}" # yml,yaml,json

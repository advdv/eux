#!/usr/bin/env bash
#MISE description="Generate code across the project"
set -euo pipefail
go generate ./...

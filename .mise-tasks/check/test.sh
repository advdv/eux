#!/usr/bin/env bash
#MISE description="Test the code in the project"
#MISE depends=["check:lint"]
set -euo pipefail
go test ./...

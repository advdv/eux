#!/usr/bin/env bash
#MISE description="Initialize the project"
set -euo pipefail
if ! dnsimple whoami >/dev/null 2>&1; then
  dnsimple auth login
fi

if ! scw config get access-key >/dev/null 2>&1; then
  scw init
fi
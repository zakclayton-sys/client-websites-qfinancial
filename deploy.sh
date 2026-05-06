#!/usr/bin/env bash
# Deploy this site to Cloudflare Pages.
# This project is NOT git-connected — git push alone does not update the live site.
set -euo pipefail
cd "$(dirname "$0")"
CLOUDFLARE_ACCOUNT_ID=598f5bd92666fa2777a55196082674fb \
  npx -y wrangler@latest pages deploy . \
  --project-name=qfinancial \
  --branch=main \
  --commit-dirty=true

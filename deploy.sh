#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

if ! command -v node >/dev/null 2>&1; then
  echo "Node.js 20 or newer is required: https://nodejs.org/"
  exit 1
fi

if [ ! -d node_modules ]; then
  npm install
fi

npm run build
echo "Preview: http://localhost:4173"
npm run preview

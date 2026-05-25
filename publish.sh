#!/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$REPO_DIR"

DATE=$(date +"%Y-%m-%d")
MSG="${1:-Update $DATE}"

git add -A
git commit -m "$MSG"
git push origin main

echo ""
echo "Published. Live at https://oaxacagravel.com in ~1 minute."

#!/usr/bin/env bash
# Save your work to the wall. Safe to run any time — it always lands.
# Usage:  bash save.sh
set -e
git add -A
git commit -m "update slot" || true
for i in 1 2 3 4 5; do
  git pull --rebase --autostash
  if git push; then
    echo ""
    echo "Saved! Refresh the wall in about a minute to see it."
    exit 0
  fi
  echo "Someone else pushed at the same moment — retrying..."
  sleep 1
done
echo "Still busy — run 'bash save.sh' once more in a moment."

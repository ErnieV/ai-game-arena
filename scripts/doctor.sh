#!/bin/sh
# AI Game Arena read-only contributor setup check.
# This script does not install software, modify configuration or contact the network.
set -eu

printf '\nAI Game Arena - contributor environment check (read-only)\n\n'
for command_name in git gh node npx codex claude; do
  if command -v "$command_name" >/dev/null 2>&1; then
    printf '  [available] %s\n' "$command_name"
  else
    printf '  [optional/missing] %s\n' "$command_name"
  fi
done

printf '\nRepository documents:\n'
for doc in AGENTS.md CONTRIBUTING.md docs/development/getting-started.md docs/development/collaboration-workflow.md; do
  if [ -f "$doc" ]; then
    printf '  [present] %s\n' "$doc"
  else
    printf '  [not found] %s\n' "$doc"
  fi
done

printf '\nNext steps:\n'
printf '  1. Read AGENTS.md and docs/development/getting-started.md.\n'
printf '  2. Choose a GitHub issue; inspect dependencies before claiming it.\n'
printf '  3. Optional: review Matt Pocock skills at https://github.com/mattpocock/skills\n'
printf '  4. Ask before installing tools or modifying global configuration.\n'
printf '\nNo changes made.\n'

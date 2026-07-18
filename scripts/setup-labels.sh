#!/usr/bin/env bash
# Sets up the label taxonomy for the backwave-feedback tracker.
# Requires the GitHub CLI (`gh`) authenticated against the repo.
# Run once from the repo root, or after cloning:  ./scripts/setup-labels.sh
set -euo pipefail

REPO="${1:-pdevito3/backwave-feedback}"

echo "Configuring labels on $REPO"

# --- Remove GitHub's defaults so they don't compete with our scheme ---
for l in bug enhancement documentation duplicate "good first issue" "help wanted" invalid question wontfix; do
  gh label delete "$l" --repo "$REPO" --yes 2>/dev/null || true
done

# --- Status (single-select by convention; all one color so a stray second one stands out) ---
STATUS_COLOR="cfd3d7"
gh label create "status: needs triage" --repo "$REPO" --color "$STATUS_COLOR" --description "Submitted, not yet reviewed (entry state)" --force
gh label create "status: needs info"   --repo "$REPO" --color "$STATUS_COLOR" --description "Blocked on the reporter for a repro or answer" --force
gh label create "status: considering"  --repo "$REPO" --color "$STATUS_COLOR" --description "Under evaluation; may or may not be done" --force
gh label create "status: backlog"      --repo "$REPO" --color "$STATUS_COLOR" --description "Accepted, not started" --force
gh label create "status: in progress"  --repo "$REPO" --color "$STATUS_COLOR" --description "Actively being worked on" --force
gh label create "status: done"         --repo "$REPO" --color "$STATUS_COLOR" --description "Shipped / resolved (terminal)" --force
gh label create "status: declined"     --repo "$REPO" --color "$STATUS_COLOR" --description "Won't do; carries a reason (terminal)" --force
gh label create "status: duplicate"    --repo "$REPO" --color "$STATUS_COLOR" --description "Same as an existing issue; links the original (terminal)" --force

# --- Type ---
TYPE_COLOR="5319e7"
gh label create "type: bug"     --repo "$REPO" --color "$TYPE_COLOR" --description "A reproducible defect" --force
gh label create "type: feature" --repo "$REPO" --color "$TYPE_COLOR" --description "A new capability or improvement" --force

echo "Done."

#!/usr/bin/env sh

set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
WEEK_VALUE=${1:-$(date +%V)}

WEEKLY_LOG="$ROOT_DIR/docs/logs/weekly/week-$WEEK_VALUE.md"
WEEKLY_RADAR="$ROOT_DIR/docs/radar/weekly/week-$WEEK_VALUE.md"

mkdir -p "$(dirname "$WEEKLY_LOG")" "$(dirname "$WEEKLY_RADAR")"

if [ ! -f "$WEEKLY_LOG" ]; then
  cat >"$WEEKLY_LOG" <<EOF
# Weekly Review

Week Number: $WEEK_VALUE
Theme:
Main Goal:
Status:

## Topics Finished

-

## Projects or Exercises Finished

-

## Concepts I Can Explain Clearly

-

## Weak Areas

-

## Review Needed

-

## Carry Forward

-

## Plan for Next Week

-
EOF
fi

if [ ! -f "$WEEKLY_RADAR" ]; then
  cat >"$WEEKLY_RADAR" <<EOF
# Weekly Radar Review

Week Number: $WEEK_VALUE
Theme:

## What I Tracked

-

## What Seems Important

-

## Terms to Revisit

-

## Adjustment for Next Week

-
EOF
fi

printf '%s\n%s\n' "$WEEKLY_LOG" "$WEEKLY_RADAR"

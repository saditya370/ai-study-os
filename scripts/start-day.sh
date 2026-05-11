#!/usr/bin/env sh

set -eu

ROOT_DIR=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
DATE_VALUE=${1:-$(date +%F)}
WEEK_VALUE=${2:-$(date +%V)}

DAILY_LOG="$ROOT_DIR/docs/logs/daily/$DATE_VALUE.md"
DAILY_RADAR="$ROOT_DIR/docs/radar/daily/$DATE_VALUE.md"

mkdir -p "$(dirname "$DAILY_LOG")" "$(dirname "$DAILY_RADAR")"

if [ ! -f "$DAILY_LOG" ]; then
  cat >"$DAILY_LOG" <<EOF
# Daily Log

Date: $DATE_VALUE
Phase:
Week: $WEEK_VALUE
Study Time:

## Today's Objective

-

## Sources Used

-

## What I Studied

-

## Key Concepts Learned

-

## What I Understood Well

-

## What Confused Me

-

## Math/Theory Covered

-

## Code/Implementation Done

-

## Errors or Bugs I Hit

-

## How I Solved Them

-

## Deliverable Completed

-

## Self Rating

-

## Tomorrow's Priority

-
EOF
fi

if [ ! -f "$DAILY_RADAR" ]; then
  cat >"$DAILY_RADAR" <<EOF
# Daily Radar

Date: $DATE_VALUE
Category:
Study Time: 10 to 15 minutes

## Topic

-

## Source

- Name:
- Link:

## Summary

-

## Why It Matters

-

## Impact on My Learning Roadmap

-

## Follow-Up Term

-

## My Take

-
EOF
fi

printf '%s\n%s\n' "$DAILY_LOG" "$DAILY_RADAR"

# AI/ML Study OS

This repository is a structured workspace for learning AI/ML from fundamentals to modern LLM systems.

It is designed to help with:

- daily study planning
- daily progress tracking
- weekly goals and reviews
- saving code experiments
- reusing strong prompts and commands
- building a long-term learning record in git

## Structure

- `docs/`
  - `roadmap/`: study roadmap and phase plans
  - `logs/daily/`: daily study logs
  - `logs/weekly/`: weekly reviews
  - `radar/daily/`: one short daily trend note
  - `radar/weekly/`: weekly radar summaries
  - `reports/`: milestone summaries and longer writeups
- `prompts/`
  - reusable prompts for daily planning, reviews, and tutoring
- `templates/`
  - templates for daily logs, weekly reviews, and study sessions
- `code/`
  - experiments, notebooks, and implementations
- `skills/ai-study-coach/`
  - local skill definition for the daily study workflow

## Best Way to Use It

Treat this repo like an operating system, not a notes folder.

- keep one active weekly goal at a time
- run one focused daily study block with a deliverable
- always pair theory with implementation
- end each day by writing what was unclear, not just what was finished
- use radar notes to stay current without letting news replace fundamentals

The repo works best when each study day produces all 4 of these:

1. one plan
2. one implementation or worked exercise
3. one written reflection
4. one next-step decision

## Daily Workflow

1. Run `./scripts/start-day.sh` to create today's log files.
2. Open `docs/roadmap/master-roadmap.md` and the latest weekly log.
3. Open `prompts/daily_start.md` and generate today's plan.
4. Study and code in `code/`.
5. Save notes in `docs/logs/daily/`.
6. Save one short trend note in `docs/radar/daily/`.
7. Run the reflection flow from `prompts/end_of_day.md`.
8. Update weekly status in `docs/logs/weekly/`.

## Weekly Workflow

1. Run `./scripts/start-week.sh` at the start of a new week.
2. Set one theme and one main goal for the week.
3. Break the goal into 5 to 7 realistic daily sessions.
4. At the end of the week, use `prompts/weekly_review.md`.
5. Decide whether to repeat, revise, or advance the phase.

## Recommended Operating Rhythm

- `90 to 150 minutes`: core study and note-taking
- `30 to 60 minutes`: coding or worked exercises
- `10 to 15 minutes`: daily radar
- `10 minutes`: end-of-day reflection

Keep the roadmap slow enough that you can still explain and implement what you study.

## First Files to Use

- `docs/roadmap/master-roadmap.md`
- `docs/roadmap/ai-operated-workflow.md`
- `prompts/daily_start.md`
- `prompts/study_os_operator.md`
- `prompts/weekly_goal_planner.md`
- `prompts/progress_report.md`
- `prompts/daily_radar.md`
- `prompts/end_of_day.md`
- `templates/daily-log-template.md`
- `templates/radar-note-template.md`
- `templates/weekly-review-template.md`
- `skills/ai-study-coach/SKILL.md`

## If You Want AI To Run The System

Use this repo in "AI-operated" mode:

1. run `./scripts/start-week.sh`
2. ask the AI to use `prompts/weekly_goal_planner.md`
3. run `./scripts/start-day.sh`
4. ask the AI to use `prompts/study_os_operator.md`
5. study and code
6. end with `prompts/end_of_day.md`
7. ask for `prompts/progress_report.md` when you want a status review

## What Good Usage Looks Like

- daily logs contain misconceptions, bugs, and next steps, not just summaries
- weekly reviews decide whether fundamentals are actually stable
- `code/` contains small runnable artifacts tied to what you studied
- radar notes stay short and support judgment rather than distraction
- git history shows visible learning outputs over time

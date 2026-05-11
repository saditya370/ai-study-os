# AI-Operated Workflow

This mode is for using the repo as a learning cockpit where the AI manages the system and you focus on learning and coding.

## Division of Labor

You do:

- show up consistently
- study the assigned topic
- write the code
- answer quizzes and review questions
- ask for explanation when confused

AI does:

- choose the daily topic
- propose the weekly goal
- keep the work aligned to the roadmap
- generate progress reports
- suggest one daily radar topic
- identify weak areas
- decide whether to reinforce or advance

## Recommended Loop

1. Start the week with `./scripts/start-week.sh`.
2. Ask the AI to use `prompts/weekly_goal_planner.md`.
3. Start each day with `./scripts/start-day.sh`.
4. Ask the AI to use `prompts/study_os_operator.md`.
5. Study and code in `code/`.
6. Paste your results back to the AI with `prompts/end_of_day.md`.
7. Once or twice per week, ask for `prompts/progress_report.md`.

## What to Ask the AI

- "Run the study OS operator for today. I have 2 hours."
- "Plan this week for me from the roadmap."
- "Review my progress and tell me if I am ready to move forward."
- "Give me today's radar topic."
- "Teach today's concept directly and then give me a coding task."

## Guardrails

- one main topic per day
- one main goal per week
- code every study day when possible
- do not let trend tracking replace fundamentals
- do not advance if you cannot explain and implement the core idea

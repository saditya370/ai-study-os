# Code Workspace

Store implementations, experiments, and notebooks here.

Suggested structure as the repository grows:

- `phase-01-foundations/`
- `phase-02-deep-learning/`
- `phase-03-pytorch/`
- `phase-04-transformers/`
- `phase-05-llm-systems/`

Each experiment should have:

- a short README
- clear inputs and outputs
- notes on what was learned

## Testing Expectations

Every non-trivial project in `code/` should have at least `2 to 5` basic tests.

Focus on simple, high-value tests such as:

- shape checks
- deterministic function behavior
- toy dataset sanity checks
- loss decreasing on a tiny controlled example
- preprocessing and split correctness

Do not overcomplicate this.
The goal is to verify core mechanics, not to build a production test suite for every exercise.

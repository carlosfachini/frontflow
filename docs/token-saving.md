# Token Saving

FrontFlow saves tokens by reducing avoidable work, not by making prompts vague.

## Common Token Waste

- Sending the whole repository when only one component matters.
- Asking for implementation before the task is validated.
- Repeating context because outputs are not structured.
- Reviewing code without acceptance criteria.
- Refactoring unrelated files.

## FrontFlow Approach

- Route first.
- Generate a focused task.
- Validate before implementation.
- Implement within scope.
- Review against criteria.

## Practical Rules

- Read narrow context first.
- Summarize decisions instead of pasting large files.
- Keep task state in `templates/current-task.md`.
- Keep reusable criteria in docs and skills.
- Prefer small diffs over broad rewrites.

Token saving is a result of less retrabalho: fewer wrong turns, fewer restarts, and fewer context dumps.

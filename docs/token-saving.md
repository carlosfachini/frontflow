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

## frontflow-po Protocol

`frontflow-po` is the recommended Codex entry point. It uses short field labels
to reduce token use while keeping the task auditable:

```text
INTENT: classify request.
OUTCOME: user-facing result.
NEXT: next FrontFlow step.
CTX: minimum context needed.
MISS: blocking missing info.
GOAL: user-facing outcome.
VALUE: why it matters.
SCOPE: included work.
OUT: excluded work.
AC: testable acceptance criteria.
UX: relevant states, accessibility, and responsive behavior.
ROUTE: next skill or step.
```

Compression should remove filler, not decisions. A short task still needs
observable acceptance criteria, scope boundaries, assumptions, and route.

The `ROUTE` field is a handoff instruction. It tells the agent which FrontFlow
skill or step should handle the next phase; it is not a promise that every CLI
can automatically invoke another skill.

## Practical Rules

- Read narrow context first.
- Summarize decisions instead of pasting large files.
- Keep task state in `templates/current-task.md`.
- Keep reusable criteria in docs and skills.
- Prefer small diffs over broad rewrites.

Token saving is a result of less retrabalho: fewer wrong turns, fewer restarts, and fewer context dumps.

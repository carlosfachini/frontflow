# Task Validator

Use this skill to check whether a generated task is ready for implementation.

## Goal

Catch vague scope, missing decisions, and risky assumptions before coding starts.

## Checks

- Goal is clear.
- Scope is bounded.
- Out of scope is explicit.
- Acceptance criteria are testable.
- Edge states are mentioned when relevant.
- Visual behavior is defined when relevant.
- Dependencies and architecture impact are understood.

## Output

```md
## Validation

Status: Ready | Needs revision

Findings:
- ...

Required changes:
- ...
```

## Rules

- Do not implement.
- If not ready, revise or request only the missing information.

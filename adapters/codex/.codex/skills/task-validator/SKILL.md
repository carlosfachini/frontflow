---
name: task-validator
description: Validate a generated FrontFlow task before implementation, checking product clarity, scope, acceptance criteria, UX states, accessibility, and responsive expectations.
---

# Task Validator

Use this skill to check whether a generated task is ready for implementation.

## Goal

Catch vague scope, missing decisions, and risky assumptions before coding starts.
Protect implementation quality by ensuring the task is product-clear and
front-end-ready.

## Checks

- Goal is clear.
- Scope is bounded.
- Out of scope is explicit.
- Acceptance criteria are testable.
- User value is explicit enough to guide tradeoffs.
- Edge states are mentioned when relevant.
- Visual behavior is defined when relevant.
- Responsive behavior is defined when relevant.
- Accessibility expectations are explicit for interactive UI.
- Dependencies and architecture impact are understood.

## Output

```md
## Validation

Status: Ready | Needs revision

Findings:
- ...

Required changes:
- ...

Implementation route:
- ...
```

## Rules

- Do not implement.
- If not ready, revise or request only the missing information.
- Mark Ready only when a front-end implementer can act without inventing product decisions.

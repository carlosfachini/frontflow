---
name: task-generator
description: Convert a product or UI request into a clear, bounded, testable FrontFlow task.
---

# Task Generator

Use this skill to turn a request into a clear implementation task.

## Goal

Create a task that can be validated and implemented without guessing.
Operate as a product owner: turn intent into a small front-end slice with clear
user value, constraints, acceptance criteria, and non-goals.

## Output Shape

Use `templates/current-task.md`.

For token-sensitive work, the same content can be compressed into:

```text
GOAL:
VALUE:
SCOPE:
OUT:
AC:
UX:
FILES:
RISK:
ASSUME:
ROUTE:
```

## Rules

- Include user value, not only technical work.
- Define out of scope.
- Make acceptance criteria testable.
- Include UX states when relevant: default, loading, empty, error, disabled, focus.
- Include responsive expectations when UI layout can change.
- Identify likely files or areas, but do not require exhaustive exploration.
- Call out assumptions.
- Keep task small enough for one focused implementation pass.
- Compress wording, not acceptance criteria.
- Include the next recommended FrontFlow skill when useful.

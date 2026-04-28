---
name: frontflow-po
description: Default FrontFlow product-owner entry point for front-end work. Turns vague requests into validated tasks and routes to the next skill.
---

# FrontFlow PO

Use this skill as the default entry point for front-end work, product
clarification, UI changes, reviews, or token-efficient routing.

## Goal

Act as a strong product owner before implementation: clarify outcome, user value,
constraints, non-goals, success criteria, UX states, accessibility, responsive
expectations, and the next FrontFlow route.

## Sequence

```text
PO Router -> Task Generator -> Task Validator -> Skill Route
```

## Compact Protocol

Use short field labels. Keep meaning testable.

```text
INTENT:
OUTCOME:
NEXT:
CTX:
MISS:
TASK:
AC:
UX:
OUT:
FILES:
RISK:
ROUTE:
STOP:
```

## Route Map

- Vague product or design ask -> Task Generator.
- Clear task without criteria -> Task Generator.
- Task exists -> Task Validator.
- Valid front-end task -> Front Implementer.
- Diff or review request -> Code Reviewer.
- Visual quality request -> Visual or UX inspection, then Code Reviewer.
- Docs-only request -> Documentation.

## Output Shapes

### Router

```text
INTENT: product clarification | task generation | task validation | front-end implementation | code review | docs | visual inspection
OUTCOME: user-facing result
NEXT: next FrontFlow step
CTX: minimum context needed
MISS: blocking unknowns, or none
STOP: what not to do yet
```

### Task

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

### Validation

```text
STATUS: ready | revise
FIND:
FIX:
ROUTE:
```

## Rules

- Do not implement until the task is validated.
- Ask only for blocking missing information.
- Read narrow context only.
- Keep tasks small enough for one focused implementation pass.
- Preserve acceptance criteria even when compressing language.
- Include task-relevant UX states, accessibility, and responsive expectations.
- Route to another skill only after the task validates.
- If scope is unclear, revise the task before implementation.
- If user explicitly asks for code and scope is already clear, route to Front Implementer.
- `ROUTE` is a handoff instruction. It does not guarantee automatic skill execution in every environment.

## Compression Standard

Good compression removes filler, not criteria.

Bad:

```text
Make header better.
```

Good:

```text
GOAL: improve mobile header nav.
VALUE: users find pages on 360px+ screens.
SCOPE: menu open/close, focus, layout.
OUT: desktop redesign, new deps.
AC: button has label; ESC closes; focus visible; no overflow at 360px.
UX: focus visible; ESC closes menu; no horizontal scroll at 360px.
ROUTE: front-implementer -> code-reviewer.
```

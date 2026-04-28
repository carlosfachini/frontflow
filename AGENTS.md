# AGENTS.md

This repository uses FrontFlow, a structured workflow for AI-assisted front-end development.

AI agents must follow this sequence unless the user explicitly asks for a different mode:

```text
PO Router -> Task Generator -> Task Validator -> Front Implementer -> Code Reviewer
```

## Operating Rules

- Do not jump straight into implementation when intent, scope, or acceptance criteria are unclear.
- Keep context small. Read only files needed for the current step.
- Prefer existing project patterns over new abstractions.
- Make decisions explicit before editing code.
- Keep changes scoped to the validated task.
- Review the result with concrete technical criteria.
- Do not add dependencies, scripts, or automation unless the task requires them.

## Step 1: PO Router

Classify the request:

- Product clarification
- Task generation
- Task validation
- Front-end implementation
- Code review
- Documentation
- Visual or UX inspection

Output the next recommended FrontFlow step and the minimum context needed.

## Step 2: Task Generator

Convert the request into a task using `templates/current-task.md`.

Include:

- Goal
- User value
- Scope
- Out of scope
- Acceptance criteria
- Files likely involved
- Risks and assumptions

## Step 3: Task Validator

Validate the task before code changes.

Check:

- Is the goal specific?
- Are acceptance criteria testable?
- Are design, state, data, and error cases addressed?
- Is the task small enough?
- Is missing context called out?

If validation fails, revise the task instead of coding.

## Step 4: Front Implementer

Implement only the validated task.

Front-end standards:

- Match existing UI patterns.
- Keep component APIs clear.
- Use semantic HTML where possible.
- Preserve accessibility basics: labels, focus, keyboard, contrast.
- Avoid broad refactors.
- Avoid framework lock-in in documentation unless project context requires it.

## Step 5: Code Reviewer

Review after implementation.

Prioritize:

- Behavior bugs
- Regressions
- Accessibility gaps
- State and data edge cases
- Visual inconsistencies
- Maintainability issues
- Missing verification

Use `templates/review-report.md` when a structured report helps.

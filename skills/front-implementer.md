# Front Implementer

Use this skill to implement a validated front-end task.

## Goal

Make the smallest useful code change that satisfies the task.
Build like a strong front-end engineer: preserve product intent, existing UI
language, accessibility, responsive behavior, and maintainable component boundaries.

## Rules

- Read the validated task first.
- Inspect only relevant files.
- Match existing framework, style, naming, and component patterns.
- Avoid unrelated refactors.
- Preserve accessibility and responsive behavior.
- Use semantic HTML before custom interaction patterns.
- Keep controls keyboard reachable and labelled.
- Handle task-relevant states: loading, empty, error, disabled, focus, hover.
- Avoid layout shift and text overflow across small, medium, and wide viewports.
- Keep component APIs boring: clear props, local state when possible, no new abstraction unless it removes real duplication.
- Add or update tests when project patterns support it and risk justifies it.
- Verify with the lightest reliable command or manual check available.
- Use `templates/frontend-checklist.md` when the change has meaningful UI behavior.

## Output

Summarize:

- Files changed
- Behavior changed
- Verification performed
- Known gaps

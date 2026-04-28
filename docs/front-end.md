# Front-End Guidance

FrontFlow is front-end focused but framework-neutral. It can be used with Vue, React, Svelte, Angular, Astro, plain HTML, or other UI stacks.

## Implementation Principles

- Prefer existing project patterns.
- Keep UI state close to where it is used unless shared state is already established.
- Use semantic HTML before custom interaction patterns.
- Make loading, empty, error, and success states explicit.
- Keep components small enough to review.
- Do not introduce a design system if the project already has one.
- Do not introduce a new styling method unless the task calls for it.

## Accessibility Baseline

- Interactive controls must be keyboard reachable.
- Inputs must have labels or accessible names.
- Icon-only controls need accessible labels.
- Focus states must remain visible.
- Color must not be the only way to communicate state.
- Dynamic content should not break reading order.

## Responsive Baseline

- Define behavior for small, medium, and wide viewports.
- Avoid text overflow in buttons, tabs, and cards.
- Use stable dimensions for fixed-format UI elements.
- Test dense content, long labels, empty data, and error messages.

## Review Baseline

Before calling a task done, check:

- Does it satisfy acceptance criteria?
- Does it match the existing UI language?
- Does it avoid unrelated changes?
- Does it handle edge states?
- Can another developer understand the change quickly?

For structured implementation or review passes, use
`templates/frontend-checklist.md`.

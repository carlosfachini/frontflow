# Code Reviewer

Use this skill to review a completed front-end task.

## Goal

Find bugs, regressions, accessibility issues, visual risks, and maintainability problems.
Review like a senior front-end reviewer: compare implementation against product
intent, acceptance criteria, UI states, accessibility, responsiveness, and local
patterns.

## Review Order

1. Behavior and acceptance criteria
2. Accessibility
3. Responsive layout
4. State, loading, empty, and error cases
5. Visual consistency with existing UI
6. Maintainability
7. Verification gaps

## Output

Lead with findings. If no issues are found, say so and list residual risk.

```md
## Findings

- Severity:
  File:
  Issue:
  Recommendation:

## Verification

- Checked:
- Not checked:
```

## Rules

- Do not rewrite code unless asked.
- Prefer precise file and line references.
- Do not spend tokens summarizing unchanged code.
- Do not approve vague "looks good" results; state what was checked and what remains risky.
- Use `templates/frontend-checklist.md` when a structured quality pass helps.

# Vue + Sass Example

This example shows how FrontFlow can be used in a Vue project with Sass. The workflow is still generic: Vue and Sass are implementation details, not requirements.

## Request

```text
Improve the empty state of the orders list.
```

## PO Router Output

- Request type: Front-end implementation request with missing UX detail.
- Recommended next step: Task Generator.
- Minimum context needed: Orders list component, current empty state, design tokens or nearby UI patterns.
- Do not do yet: Refactor list data loading.

## Task Generator Output

Use `templates/current-task.md` to define:

- Goal: Make empty orders list useful and consistent.
- Scope: Empty state layout, copy, optional action button.
- Out of scope: API changes, table refactor, routing changes.
- Acceptance criteria: Empty state appears only when loaded list is empty; action is keyboard reachable; layout works on small screens.

## Implementation Notes

- Keep Vue component structure consistent with the project.
- Keep Sass selectors scoped to the component.
- Use existing spacing and color tokens.
- Review empty, loading, and error states separately.

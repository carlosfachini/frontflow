# Front-End Quality Checklist

Use this checklist before marking a FrontFlow implementation or review complete.

## Product Fit

- [ ] User-facing outcome matches the validated task.
- [ ] Acceptance criteria are satisfied or differences are explained.
- [ ] Out-of-scope work was avoided.

## UX States

- [ ] Default state is clear.
- [ ] Loading state is handled when async work exists.
- [ ] Empty state is handled when data can be absent.
- [ ] Error state is visible and recoverable when failures can happen.
- [ ] Disabled state communicates unavailable actions.
- [ ] Hover and focus states are intentional.

## Accessibility

- [ ] Interactive controls are keyboard reachable.
- [ ] Inputs and icon-only controls have labels or accessible names.
- [ ] Focus remains visible.
- [ ] Color is not the only state indicator.
- [ ] Dynamic content keeps a sensible reading order.

## Responsive Layout

- [ ] Small viewport checked.
- [ ] Medium viewport checked.
- [ ] Wide viewport checked.
- [ ] Long labels or dense content do not overflow.
- [ ] Fixed-format UI has stable dimensions.

## Maintainability

- [ ] Existing framework, style, naming, and component patterns are followed.
- [ ] Component API is clear and scoped.
- [ ] State lives close to usage unless shared state already exists.
- [ ] No new dependency, abstraction, or styling method was added without need.

## Verification

- [ ] Relevant command or manual check was run.
- [ ] Not-checked areas are listed as residual risk.

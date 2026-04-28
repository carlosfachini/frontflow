# FrontFlow End-To-End Example

## User Request

```text
Make the mobile header better.
```

## 1. PO Router

```text
INTENT: task generation
OUTCOME: users can navigate from mobile header without layout overflow or unclear controls.
NEXT: Task Generator
CTX: current header component, nav behavior, existing breakpoints.
MISS: none if existing header patterns are discoverable.
STOP: do not redesign desktop nav or add dependencies.
```

## 2. Task Generator

```text
GOAL: improve mobile header navigation.
VALUE: users on 360px+ screens can open, read, and close nav reliably.
SCOPE: mobile menu trigger, open/close state, focus, spacing, overflow.
OUT: desktop redesign, routing changes, new animation library, new design system.
AC: trigger has accessible name; menu opens and closes; ESC closes when supported; focus visible; no horizontal scroll at 360px; desktop header remains unchanged.
UX: default closed; open menu shows links clearly; disabled/current link state remains understandable; focus and hover visible; responsive behavior defined for small/medium/wide.
FILES: header component, header styles, related tests if present.
RISK: existing nav state may be shared with desktop.
ASSUME: project already has header component and responsive styles.
ROUTE: Task Validator
```

## 3. Task Validator

```text
STATUS: ready
FIND: goal, scope, out-of-scope, UX states, accessibility, and responsive criteria are testable.
FIX: none.
ROUTE: Front Implementer -> Code Reviewer
```

## 4. Front Implementer

Expected implementation behavior:

- Inspect only header component, styles, and nearby tests.
- Preserve desktop behavior.
- Use semantic button for menu trigger.
- Add or preserve accessible names and visible focus.
- Keep layout stable at small, medium, and wide viewports.
- Verify with existing test/lint/build command or a focused manual check.

## 5. Code Reviewer

```text
## Findings

No blocking issues found.

## Verification

- Checked: mobile trigger label, open/close behavior, focus visibility, 360px overflow, desktop unchanged.
- Not checked: full visual regression suite unavailable.

## Residual Risk

- Manual viewport check does not replace automated browser coverage.
```

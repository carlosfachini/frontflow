# Sass Guidance

FrontFlow does not require Sass, but many front-end projects use it. These rules keep Sass readable and reviewable.

## Principles

- Keep selectors shallow.
- Prefer component-scoped styles when the stack supports them.
- Use variables or tokens for repeated values.
- Avoid global overrides unless they are part of the project architecture.
- Keep mixins small and purposeful.
- Do not hide complex layout behavior inside clever nesting.

## Suggested Structure

```scss
.component {
  display: grid;
  gap: var(--space-4);
}

.component__header {
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.component__title {
  font-size: var(--font-size-lg);
}
```

## Review Checks

- Can the selector affect unrelated UI?
- Does the cascade depend on fragile DOM depth?
- Are spacing, color, and typography values aligned with project tokens?
- Does the responsive rule solve one clear layout issue?

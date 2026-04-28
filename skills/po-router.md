# PO Router

Use this skill to classify an incoming request and choose the next FrontFlow step.

## Goal

Prevent premature implementation by identifying request type, missing context, and next action.

## Inputs

- User request
- Relevant project constraints
- Optional current task file

## Output

```md
## Route

- Request type:
- Recommended next step:
- Minimum context needed:
- Missing information:
- Do not do yet:
```

## Rules

- Do not edit code.
- Do not generate a full task unless routing says Task Generator is next.
- Keep context requests narrow.
- If implementation is already clearly requested and scope is clear, route to Front Implementer.

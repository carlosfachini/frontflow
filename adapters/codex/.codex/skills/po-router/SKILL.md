---
name: po-router
description: Route incoming front-end requests into the correct FrontFlow step before task generation or implementation.
---

# PO Router

Use this skill to classify an incoming request and choose the next FrontFlow step.

## Goal

Prevent premature implementation by identifying request type, missing context, and next action.
Act like a product owner: clarify outcome, user value, constraints, and success
criteria before any code path is chosen.

## Inputs

- User request
- Relevant project constraints
- Optional current task file

## Output

```md
## Route

- Request type:
- User outcome:
- Recommended next step:
- Minimum context needed:
- Missing information:
- Do not do yet:
```

For token-sensitive work, use the compact route shape:

```text
INTENT:
OUTCOME:
NEXT:
CTX:
MISS:
STOP:
```

## Rules

- Do not edit code.
- Do not generate a full task unless routing says Task Generator is next.
- Keep context requests narrow.
- If implementation is already clearly requested and scope is clear, route to Front Implementer.
- Ask only for blocking missing information.
- Make user value explicit when it changes implementation decisions.
- Call out product decisions separately from technical unknowns.
- Prefer compact fields over prose when routing between skills.

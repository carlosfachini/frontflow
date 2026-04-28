---
name: po-router
description: Route incoming front-end requests into the correct FrontFlow step before task generation or implementation.
---

# PO Router

Classify the request and choose next FrontFlow step.

Sequence:

```text
PO Router -> Task Generator -> Task Validator -> Front Implementer -> Code Reviewer
```

Return:

```md
## Route

- Request type:
- Recommended next step:
- Minimum context needed:
- Missing information:
- Do not do yet:
```

Rules:

- Do not edit code.
- Do not over-read the repository.
- Ask only for context needed by the next step.
- If task is already clear and user wants code, route to Front Implementer.

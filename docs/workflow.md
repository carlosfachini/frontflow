# FrontFlow Workflow

FrontFlow separates front-end work into five steps so agents do not spend tokens solving the wrong problem.

## 1. PO Router

The PO Router decides what kind of request arrived and what should happen next. It does not implement. It prevents unclear asks from turning into noisy code changes.

Good output:

- Request type
- Missing information
- Recommended next step
- Minimum context needed

## 2. Task Generator

The Task Generator turns intent into a concrete task. It writes a task that a human or agent can execute without guessing.

Good output:

- Goal
- Scope
- Out of scope
- Acceptance criteria
- Candidate files
- Risks

## 3. Task Validator

The Task Validator checks whether the task is ready. It catches vague goals, oversized scope, hidden design decisions, and untestable acceptance criteria.

Validation should happen before implementation.

## 4. Front Implementer

The Front Implementer edits the code. It should use the validated task as a boundary and avoid unrelated cleanup.

Implementation should be boring in the best way: small, traceable, and aligned with the existing codebase.

## 5. Code Reviewer

The Code Reviewer reviews the diff and the behavior. It should lead with problems, not summaries.

Review should consider:

- User-facing behavior
- Accessibility
- Responsive layout
- State transitions
- Error and loading states
- Maintainability
- Test or verification gaps

## Handoff Contract

Each step should produce enough output for the next step, but not dump unnecessary context. This is how FrontFlow saves tokens: it sends the right information at the right time.

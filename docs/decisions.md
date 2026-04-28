# Decision Making

FrontFlow asks agents to make decisions before coding. This reduces rework and prevents hidden assumptions from becoming implementation.

## Decision Map

Use `templates/decision-map.md` when a task has more than one valid path.

Capture:

- Decision
- Options considered
- Chosen option
- Reason
- Tradeoffs
- Reversal cost

## Good Decisions

Good decisions are:

- Specific
- Connected to user value
- Compatible with current architecture
- Small enough to revisit
- Clear about tradeoffs

## Bad Signals

Pause before coding when:

- Acceptance criteria are subjective.
- Design behavior is implied but not stated.
- Data shape is unknown.
- The task touches shared components without a review plan.
- The agent needs to inspect too much unrelated code.

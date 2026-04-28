# FrontFlow

FrontFlow is a portable workflow for AI-assisted front-end development. It helps teams turn requests into clear tasks, make decisions before coding, implement with less noise, and review outcomes with technical criteria.

FrontFlow is not a prompt pack. It is a structured operating flow for people and AI agents working together:

1. PO Router clarifies intent and routes the request.
2. Task Generator turns demand into actionable work.
3. Task Validator checks scope, assumptions, and acceptance criteria.
4. Front Implementer makes the front-end change.
5. Code Reviewer reviews behavior, maintainability, accessibility, and risk.

The goal is practical: fewer vague prompts, fewer context dumps, fewer rewrites.

## Why FrontFlow

AI coding often gets expensive because the agent receives too much context too early, starts coding before decisions are made, or reviews without clear criteria. FrontFlow reduces token use by keeping each step focused.

- Small task context instead of whole-project context.
- Explicit decisions before implementation.
- Reusable templates for task, decision, and review shape.
- Clear agent handoff rules in `AGENTS.md`.
- Portable docs and skills that can be copied into any project.

## When To Use

Use FrontFlow when a front-end request needs clear thinking before code:

- A product or design request is too vague to implement safely.
- A UI feature needs scope, acceptance criteria, and edge states.
- A visual change may affect responsiveness or accessibility.
- A refactor needs boundaries before files are edited.
- A human wants an AI agent to implement a task with less back-and-forth.
- A pull request or local diff needs structured front-end review.

Do not use FrontFlow for tiny edits where intent, scope, and review criteria are already obvious.

## What Is Included

- `AGENTS.md`: agent operating guide.
- `docs/`: workflow, front-end standards, Sass guidance, decisions, token saving.
- `skills/`: generic skill specs for any AI CLI or assistant.
- `adapters/codex/.codex/skills/`: Codex-ready skill folders with `SKILL.md`.
- `templates/`: current task, decision map, review report, visual summary.
- `examples/`: small usage examples.
- `install.sh`: copies FrontFlow files into a target project.

## Install

From this repository:

```sh
chmod +x install.sh
./install.sh /path/to/your/project
```

This copies:

- `AGENTS.md`
- `docs/`
- `templates/`
- `adapters/codex/.codex/`

It does not install Node, Python, packages, hooks, or background automation.

## Use With Codex

After running `install.sh`, open the target project with Codex. Codex will see:

- `AGENTS.md` for repo-level agent behavior.
- `.codex/skills/*/SKILL.md` for workflow-specific skills.
- `templates/` for repeatable outputs.

Recommended sequence:

```text
Use PO Router to classify this request.
Use Task Generator to write current-task.md.
Use Task Validator to check the task before implementation.
Use Front Implementer to make the change.
Use Code Reviewer to review the result.
```

## Quick Example

User request:

```text
Improve the empty state of the invoices page.
```

FrontFlow turns that into a small sequence:

1. PO Router classifies it as a front-end UX task and asks for the invoices page plus existing empty-state patterns.
2. Task Generator defines scope: empty-state layout, message, and action. It marks API changes and table refactors out of scope.
3. Task Validator checks acceptance criteria: empty state appears only after loading, action is keyboard reachable, layout works on small screens.
4. Front Implementer edits the relevant component and styles only.
5. Code Reviewer checks behavior, accessibility, responsive layout, and missing verification.

The agent does not need the whole repository at every step. It receives enough context for the current decision, which reduces token use and avoids rework.

## Use With Other AI CLIs

FrontFlow is CLI-agnostic. If your tool does not support `.codex/skills`, use the files in `skills/` as plain instructions and keep `AGENTS.md` as the system guide for the repository.

Suggested generic usage:

1. Paste or reference `AGENTS.md`.
2. Pick one skill from `skills/`.
3. Fill `templates/current-task.md`.
4. Implement only after validation.
5. Review with `templates/review-report.md`.

## Version

Current version: `0.1.0`.

v0.1 is intentionally small, copyable, and easy to inspect. Complex automation, package dependencies, and framework-specific generators are out of scope for now.

## License

MIT. See [LICENSE](LICENSE).

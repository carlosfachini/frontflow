# FrontFlow

![Version](https://img.shields.io/badge/version-v0.1.0-blue)
![License](https://img.shields.io/badge/license-MIT-green)
![Codex Ready](https://img.shields.io/badge/Codex-ready-black)

FrontFlow is a portable workflow for AI-assisted front-end development. It helps teams turn requests into clear tasks, make decisions before coding, implement with less noise, and review outcomes with technical criteria.

## Start in 30 seconds

Copy this into Codex inside any front-end project:

```txt
Use FrontFlow workflow.

Objective:
Create a responsive pricing card component with title, price, features and primary CTA.

First define the task.
Then implement only what is defined.
Finally review the result using FrontFlow criteria.
```

This is the fastest way to test FrontFlow: it forces the agent to define the task before coding, build only what was defined, and review the result with clear criteria.

FrontFlow is not a prompt pack. It is a structured operating flow for people and AI agents working together:

1. PO Router clarifies intent and routes the request.
2. Task Generator turns demand into actionable work.
3. Task Validator checks scope, assumptions, and acceptance criteria.
4. Front Implementer makes the front-end change.
5. Code Reviewer reviews behavior, maintainability, accessibility, and risk.

In plain language:

1. Define the task before coding.
2. Build only what is defined.
3. Review with clear criteria.

The goal is practical: fewer vague prompts, fewer context dumps, fewer rewrites.

FrontFlow's recommended Codex entry point is `frontflow-po`: a compact PO skill
that turns vague front-end requests into short, validated tasks and recommends
the next skill route. It borrows the useful part of terse prompting: remove
filler, keep decisions.

## Why FrontFlow

AI coding often gets expensive because the agent receives too much context too early, starts coding before decisions are made, or reviews without clear criteria. FrontFlow reduces token use by keeping each step focused.

- Small task context instead of whole-project context.
- Explicit decisions before implementation.
- Reusable templates for task, decision, and review shape.
- Clear agent handoff rules in `AGENTS.md`.
- `frontflow-po` for low-token routing between skills.
- Portable docs and skills that can be copied into any project.

Without FrontFlow:

- Large prompts.
- Repeated context.
- Unclear tasks.
- More retries.

With FrontFlow:

- Task-first workflow.
- Smaller context.
- Clearer acceptance criteria.
- Fewer retries.

The token savings come mainly from reducing rework and repeated context. There is no technical magic: the workflow keeps each step smaller and easier to verify.

`frontflow-po` does not guarantee automatic execution of other skills in every
assistant or CLI. It writes the route clearly so the agent can hand off, invoke,
or continue with the right FrontFlow step in the current environment.

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
- `skills/`: canonical generic skill specs for any AI CLI or assistant.
- `adapters/codex/.codex/skills/`: generated Codex-ready skill folders with `SKILL.md`.
- `templates/`: current task, decision map, review report, visual summary, front-end checklist.
- `examples/`: usage examples, including an end-to-end FrontFlow pass.
- `scripts/sync-codex-skills.sh`: regenerates Codex skills from `skills/`.
- `install.sh`: copies FrontFlow files into a target project with backups.

## Install

From this repository:

```sh
chmod +x install.sh
./install.sh /path/to/your/project
```

Use `--force` to skip the confirmation prompt:

```sh
./install.sh /path/to/your/project --force
```

This copies:

- `AGENTS.md`
- `docs/`
- `templates/`
- `adapters/codex/.codex/`

If any destination already exists, it is backed up under
`.frontflow-backup/YYYYMMDD_HHMMSS/` before being replaced.

It does not install Node, Python, packages, hooks, or background automation.

## Maintain Skills

Edit canonical skills in `skills/*.md`, then regenerate the Codex adapter:

```sh
scripts/sync-codex-skills.sh
```

This keeps `adapters/codex/.codex/skills/*/SKILL.md` aligned with the source
skills and reduces drift.

## Use With Codex

After running `install.sh`, open the target project with Codex. Codex will see:

- `AGENTS.md` for repo-level agent behavior.
- `.codex/skills/*/SKILL.md` for workflow-specific skills.
- `templates/` for repeatable outputs.

Recommended compact entry:

```text
Use frontflow-po.
INTENT -> TASK -> VALIDATE -> ROUTE.
```

Expanded sequence:

```text
Use PO Router to classify this request.
Use Task Generator to write current-task.md.
Use Task Validator to check the task before implementation.
Use Front Implementer to make the change.
Use Code Reviewer to review the result.
```

Compact before/after:

```text
Before:
Make header better on mobile.

After:
GOAL: improve mobile header nav.
VALUE: users find pages on 360px+ screens.
SCOPE: menu open/close, focus, layout.
OUT: desktop redesign, new deps.
AC: button has label; ESC closes; focus visible; no overflow at 360px.
UX: focus visible; menu closes with ESC; no horizontal scroll at 360px.
ROUTE: front-implementer -> code-reviewer.
```

## Quick Example

### Input

```text
Create a short form component for event registration with name, email and phone.
```

### Task Output

```md
Objective:
Create a reusable event registration form component.

Requirements:
- Fields: name, email, phone.
- Primary submit CTA.
- Responsive layout for small and wide screens.
- Use existing form, button, spacing, and typography patterns.

Acceptance criteria:
- Each input has a visible label or accessible name.
- Email input uses email keyboard/type behavior where supported.
- Phone input does not break layout with long values.
- Submit button is keyboard reachable.
- Empty and invalid states are visually clear.
```

### Review Output

```md
Status: Needs small fix

Issues found:
- Phone input has no accessible label.
- Mobile spacing is tighter than nearby form patterns.

Validation recommendation:
- Add an explicit label for phone.
- Align mobile spacing with existing form components.
- Re-check keyboard tab order after the fix.
```

### Flow

1. PO Router classifies the request as a front-end form task.
2. Task Generator writes the task and acceptance criteria.
3. Task Validator checks whether the task is ready.
4. Front Implementer builds only that component.
5. Code Reviewer checks behavior, accessibility, layout, and verification.

The agent does not need the whole repository at every step. It receives enough context for the current decision, which reduces token use and avoids rework.

For a complete pass, see [examples/end-to-end.md](examples/end-to-end.md).

## Use With Other AI CLIs

FrontFlow is CLI-agnostic. If your tool does not support `.codex/skills`, use the files in `skills/` as plain instructions and keep `AGENTS.md` as the system guide for the repository.

Suggested generic usage:

1. Paste or reference `AGENTS.md`.
2. Pick one skill from `skills/`.
3. Fill `templates/current-task.md`.
4. Implement only after validation.
5. Review with `templates/review-report.md`.

## Recommended GitHub metadata

Description:

```text
Structured workflow for AI-assisted front-end development.
```

Topics:

```text
ai
frontend
codex
workflow
agents
developer-tools
ai-tools
front-end
```

## Version

Current version: `0.1.0`.

v0.1 is intentionally small, copyable, and easy to inspect. Complex automation, package dependencies, and framework-specific generators are out of scope for now.

## License

MIT. See [LICENSE](LICENSE).

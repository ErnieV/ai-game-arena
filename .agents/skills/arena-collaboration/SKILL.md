---
name: arena-collaboration
description: Coordinate AI Game Arena contributions via GitHub Issues and PRs, respecting dependencies, parallel branches, and durable handoffs.
---

# AI Game Arena collaborative ticket workflow

This is **project-owned guidance**, not a fork of Matt Pocock's skills.

## When to use

Use when onboarding to this repository, claiming or working on a GitHub ticket, preparing a PR, or closing a research/implementation task.

## Start

1. Read `AGENTS.md`, `CONTRIBUTING.md`, `docs/development/collaboration-workflow.md`, and relevant architectural context.
2. Ask which GitHub issue or task the human wants. Do not self-assign or download/install skills without approval.
3. Read the issue and its dependencies. Confirm it is ready, has a lead owner, and is not duplicating another active implementation.
4. Work in a dedicated branch/worktree. One active ticket per implementation context **does not mean one globally active ticket for the repository**.

## During work

- Preserve the shared local/online agent contract unless a reviewed proposal changes it.
- Report verified results, commands, versions and unresolved hypotheses.
- When encountering an unplanned dependency or architectural decision, add context to the issue or propose a follow-up; do not silently re-scope multiple people's tasks.
- Use optional upstream Matt Pocock skills for grilling, spec writing, ticket slicing, implementation and review when installed. Do not override repo rules or block other contributors.

## Finish: compulsory knowledge handoff

Before proposing Done, provide:

- Outcome and linked PR/commit.
- Tested evidence and reproduction steps, including negative findings.
- Decisions, alternatives, and compatibility effects.
- Durable documentation/research/ADR update if applicable.
- Newly created follow-up tasks, blockers and unblocked dependencies.
- Reviewer notes, licenses and provenance.

Use the handoff template in `docs/development/collaboration-workflow.md`. Do not treat private chat history as shared project knowledge.

## Safety and permission

- Never run third-party installation scripts, set global agent configuration, mutate GitHub issues or merge code without the human's approval.
- Ensure significant third-party code complies with `LICENSING.md` and `THIRD_PARTY_NOTICES.md`.
- Project instructions are open to PRs and community discussion; current accepted rules are followed until changed.

# Contributor setup: any editor, any AI

**Status:** proposed workflow (RFC). This is an invitation, not a prerequisite to participate.

AI Game Arena should be welcoming to contributors using Codex, Claude Code, Copilot, Cursor, another AI, or no AI. The repository's own instructions are the source of truth. Third-party skills are optional accelerators.

## First session: onboarding contract

After cloning this repository, ask your coding agent to:

1. Read the root `AGENTS.md` and `CONTRIBUTING.md`.
2. Read `docs/development/collaboration-workflow.md`.
3. Check `docs/architecture/architecture-and-specification.md` only for the relevant area, understanding it is an RFC.
4. Report which local tools are available, including Git, GitHub CLI (`gh`), and your coding agent.
5. **Suggest**, but do not automatically install, Matt Pocock's engineering skills if they are not available. Ask before installing external dependencies, running setup commands, overwriting local agent config, or configuring GitHub.
6. Ask which GitHub issue or experiment the contributor wants to explore. Do not automatically pick a ticket or create a large backlog.

In AI tools that load repository `AGENTS.md` automatically, that file points to this onboarding flow. Other agents can be given this instruction explicitly. We cannot guarantee every AI product reads `AGENTS.md` on startup.

Optional, read-only diagnostics:

```bash
sh scripts/doctor.sh
```

This command checks for prerequisites and displays setup suggestions. It neither downloads software nor alters the system.

## Optional Matt Pocock skills

Upstream: https://github.com/mattpocock/skills

Matt's skills can help with questioning assumptions, documenting findings, writing specs, generating dependent tickets, implementation and reviews. They are **not mandatory** and their upstream instructions are not the authority for our shared GitHub board.

The following installation commands are from upstream documentation as checked in November 2026. **Inspect the upstream repository and current instructions before running them.** External plugins may be updated without this repository changing.

### Codex (supported plugin installations)

```bash
codex plugin marketplace add mattpocock/skills
codex plugin add mattpocock-skills@mattpocock
```

### Claude Code

```bash
claude plugin install mattpocock-skills@claude-plugins-official
```

### Other editors / editable local skill copies

Upstream also documents:

```bash
npx skills@latest add mattpocock/skills
```

Choose the intended local agent when prompted. Do not execute unreviewed installer commands automatically. Installing all skills is not necessary; a minimal subset to evaluate is `grill-with-docs`, `to-spec`, `to-tickets`, `implement`, and `code-review`, along with `setup-matt-pocock-skills` where required.

### Initial Matt skill configuration

If the contributor opts in, review the effects of `/setup-matt-pocock-skills` **before** running it against this checkout. Point it at **GitHub Issues** as the shared ticket tracker, not an independent local source of truth. Keep existing project docs, labels and status vocabulary intact; propose configuration changes as PRs.

If the installer cannot respect our repository conventions, skip the setup or configure it in a disposable scratch checkout. Do not quietly overwrite team instructions.

## Local vs shared instructions

- `AGENTS.md`: version-controlled, repo-wide expectations for agents. **Do not edit it locally just to fit personal preferences**. Propose a PR for shared changes.
- `.agents/skills/arena-collaboration/SKILL.md`: an optional project-owned skill with team-specific coordination and handoff guidance. Tools that do not discover this path can follow the linked Markdown directly.
- Personal agent configuration and locally installed upstream skills: developer-specific; not a prerequisite for contribution.
- GitHub Issues/Project: shared tasks, assignees and dependency links. Branches/worktrees isolate each contributor's changes.
- `docs/research/` and `docs/decisions/`: proposed destinations for reusable findings and consequential architectural choices (create as needed).

## Quick start prompt for your own AI

> Read AGENTS.md, CONTRIBUTING.md and docs/development/getting-started.md. Summarize this repository's collaboration rules, check available local tools without modifying my environment, suggest optional Matt Pocock skills, and show which GitHub issue(s) I can work on. Do not install anything, claim a ticket, or change global settings before I approve.

## Sources and non-goals

- Matt Pocock skills: https://github.com/mattpocock/skills
- Collaboration workflow: [collaboration-workflow.md](collaboration-workflow.md)
- Governance: [../../GOVERNANCE.md](../../GOVERNANCE.md)

This repository does not fork, vendor, or redistribute Matt's skills as part of this proposal. Do not require a specific AI vendor or enforce an automatic global skill installation.

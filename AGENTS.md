# Codex instructions: AI Game Arena

## Source of truth

For substantial architecture or implementation design, read `docs/architecture/architecture-and-specification.md` fully; for a small scoped task, first read the relevant sections and its linked issue. It is an RFC, not a set of pre-validated technical claims. Track unverified assumptions and decisions explicitly.

## On every new development session: shared onboarding

- Read `docs/development/getting-started.md` and `docs/development/collaboration-workflow.md` before claiming shared work. They propose the team's workflow and are themselves open to discussion/PR.
- Check which local AI/dev tools are available. Recommend optional [Matt Pocock skills](https://github.com/mattpocock/skills) to the human when helpful, **without automatically installing them, running setup, or changing global config**.
- `scripts/doctor.sh` is a read-only prerequisite check; it never installs or configures tools.
- Read the relevant GitHub Issue and blocker links before implementation. **Multiple contributors/agents may work on different ready issues concurrently.** One ticket per *implementation context/worktree* is a focus guideline, never a global project lock.
- Use a separate branch/worktree per implementation. Coordinate shared API or file collisions explicitly through Issues/PRs.
- At completion, provide a knowledge handoff: verified results, relevant decisions, documentation/research/ADR changes, new issues/dependencies and integration notes. A commit alone is not sufficient for Done.
- Project-specific skill: `.agents/skills/arena-collaboration/SKILL.md`. If your agent does not discover repository skills, follow the linked Markdown manually.
- The team may use Matt's `grill-with-docs → to-spec → to-tickets → implement → code-review` when useful, or skip/reorder stages for quick experiments. GitHub Issues are the shared tracker; don't create a second competing local ticket queue.

## Current architectural goals (challengeable by PR/RFC)

These goals guide the initial technical spikes. They are **not immutable instructions or settled architecture**. Evaluate alternative proposals on their evidence and tradeoffs, and allow contributors to revise the specification via issues and PRs. Until a change is accepted, use these as the current test baseline.

- One game-facing player protocol for **both** local testing/training and online competition. The same agent implementation must work in both by changing connection configuration only.
- Identical action semantics, observation permissions, error behavior, game variant rules, time semantics and validation for a given protocol/game version. Privileged training administration is NOT exposed to agents.
- Two independently authored external agents must be able to control separate OpenTTD companies in the same authoritative game instance.
- Chess must also run under the same top-level protocol, despite its turn-based semantics.
- Multi-game architecture must support game-specific schemas and manifests. Do not invent a one-size-fits-all game action language.
- Avoid implementing new competition and training functionality if maintainable licensed components can be adapted.
- Do not copy from sources with unclear or incompatible licenses, especially `jplattel/openttd-llm`, without resolving permission.
- Use macOS as the primary initial development target. Online hosting comes later.

## First assignment: technical feasibility, not a rewrite

1. Read the specification, map assumptions to targeted verification tasks and note blockers.
2. Inspect and, where possible, run Agents Arena's chess workflow on macOS without altering upstream code.
3. Evaluate whether its match engine supports an external continuously running game; provide a measured go/no-go recommendation.
4. Inspect OpenEnv as an optional orchestrator that MUST go through the same player gateway, not as a second player API.
5. Evaluate legally reusable OpenTTD adapters/bridges for actions, observations, multiplayer isolation, asynchronous requests and authoritative validation.
6. Propose the smallest vertical slice: two independent agents in chess and then two in OpenTTD, same protocol envelope.
7. Add tests before promoting any interface to a stable contract; document unresolved unknowns.

Before writing significant application code, report what was actually verified, what is conjecture, potential licensing issues, and the smallest next test.

## Licensing guardrails

- New original code is provisionally PolyForm Noncommercial 1.0.0; new original documentation is CC BY-NC-SA 4.0. See `LICENSING.md`.
- Do not label the software OSI-open-source; these terms intentionally restrict commercial use.
- Never relicense third-party code. Preserve upstream notices and check compatibility for all copied/combined components.
- Do not accept significant third-party code for dual-commercial licensing without an explicit contribution rights agreement.
- Do not copy from Joost’s repository until actual license/permission is verified.

## Open collaboration with human and AI contributors

- The repository is a collaborative experiment: contributors can use their own AI tools, or none, to propose and review designs and code.
- Treat the architecture specification as an RFC rather than an unquestionable authority. Document competing approaches and technical findings.
- Code PRs, documentation PRs and experimental draft PRs are all welcome. Do not exclude contributions merely because they challenge the existing plan.
- The human submitting AI-assisted work remains responsible for testing, attribution, licenses and safety.
- Follow `CONTRIBUTING.md` and `GOVERNANCE.md`; major changes are discussed publicly and consequential decisions are recorded.
- Commercial relicensing of external code requires explicit rights; code can be reviewed before those rights are resolved, but don't merge substantial contributions until the licensing gate is cleared.

# Collaborative development: many people, many agents, one shared project

**Status:** proposal / RFC for discussion. This document is a candidate team process, not yet an enforced rule set.

## Guiding principle

> **One active ticket per implementation session is useful; one active ticket across the entire project is not.**

We want independent people, each optionally using their own AI agents, to work in parallel. GitHub provides the shared coordination layer; an individual agent owns only its own branch, worktree, ticket and context.

Matt Pocock's current `to-tickets` documentation already describes a *ready frontier* of unblocked tickets and parallel sessions. We extend that idea to a distributed community with explicit handoffs. We do not copy or rewrite upstream skills to impose a global queue.

## Roles and records

| Artifact | Responsibility |
| --- | --- |
| GitHub Discussion | Explore direction, trade-offs and ideas before formalizing work |
| GitHub Issue | Canonical task: scope, acceptance, owner, dependencies, evidence and outcome |
| GitHub Project | Visualize shared issues, status, ownership and priority; **not a separate ticket database** |
| Branch / worktree | Isolated implementation context per contributor/agent session |
| Pull Request | Reviewable code/doc change, with tested outcome and handoff information |
| Research note | Durable findings from experiments, including negative findings |
| Architecture Decision Record (ADR) | Why a consequential decision was made, alternatives and consequences |

Don't treat local `.scratch/` ticket files produced by an AI tool as competing shared tickets. If they are useful personal notes, link their conclusions back to the canonical GitHub issue.

## Proposed board statuses

These are **suggested**, not yet configured in a GitHub Project:

1. **Needs exploration**: important unknowns or feasibility questions remain; no implementation commitment yet.
2. **Ready to pick up**: goal, acceptance criteria, dependencies and context are sufficient for a fresh contributor.
3. **In progress**: a contributor has claimed the issue and is actively working in an isolated branch/worktree.
4. **In review**: a PR or research outcome is available; awaiting feedback, validation or a merge decision.
5. **Done**: accepted outcome with recorded evidence and knowledge handoff.

Use explicit **blocking links / dependencies** for tickets not yet ready. Do not confuse an unresolved blocker with a sixth status. If GitHub Projects cannot show the dependencies directly, link blockers in issue descriptions as a fallback. Add an `abandoned / superseded` disposition for rejected experiments rather than presenting them as completed implementations.

We can later add optional fields such as `type` (research/spec/code/docs), `game`, `risk`, `owner`, and `priority`. Keep v1 intentionally small.

## Dependency-aware parallel work

1. An unblocked, well-defined task is on the **ready frontier** and can be claimed.
2. Any number of people can work on **different** unblocked issues at the same time.
3. Default to one lead contributor per issue. Record the issue assignee and a short comment (intent, branch, anticipated integration point). Others are welcome to review or pair.
4. A contributor should normally have **one active implementation ticket per agent/worktree** to reduce context interference; multiple independent worktrees are allowed.
5. If two issues touch a shared contract or the same high-conflict files, coordinate their interface first, add a dependency if necessary, or agree on integration order.
6. Do not cherry-pick undocumented changes from another contributor's worktree. Use public PRs, issues and stable interfaces.
7. If work stalls, communicate in the issue so another contributor can pick it up.

**Example ready frontier:**

```text
[Explore chess arena]   [Evaluate OpenTTD bridges]   [Compare OpenEnv contract]
          \                       |                         /
           \                      |                        /
          [Agree minimal shared agent contract]
                            |
               [Implement cross-game adapter]
```

The top three research tasks can run concurrently. Implementation of the shared contract waits for their relevant outcomes.

## From idea to work: an optional, iterative workflow

```text
Discussion / idea
    ├── quick spike (when uncertainty is high)
    └── grill / investigate
          ↓
    spec / RFC (when useful)
          ↓
    independent tickets with dependency links
          ↓
    claim → implement or research → PR/review
          ↓
    durable handoff + update dependencies
          ↺ feed discoveries back into specs and issues
```

Matt Pocock's optional `grill-with-docs`, `to-spec`, `to-tickets`, `implement`, `code-review` and `wayfinder` skills are useful at different points. No one is required to run all of them, and research spikes may precede a spec.

`to-tickets` should publish to **GitHub Issues** when used for shared work. Present the proposed ticket graph for human review before opening lots of issues.

## Suggested issue contents

- **Goal / why** and the user-visible or developer-visible outcome.
- **Scope and non-goals**; relevant game/variant or protocol version.
- **Acceptance criteria**, including an observable failing condition at the starting revision.
- **Dependencies:** blocked by / blocks with links to GitHub Issues, not just textual ticket numbers.
- **Evidence and test plan**, plus reproducible setup steps.
- **Interfaces and likely conflict zones** (other active issues / shared files).
- **Owner** (if claimed), branch/PR link.
- **Expected handoff:** decision, research note, new blockers and follow-on issues.

## Definition of Done: code + shared knowledge

A ticket is **not done merely because code was committed or a benchmark ran**. Before moving it to Done, the issue/PR should contain a concise, durable handoff:

1. **Outcome:** what was completed, not completed, or disproved, with links to PR/commit/artifacts.
2. **Evidence:** commands run, environment/versions, tests and actual results. Separate observed facts from hypotheses; state unknowns.
3. **Decisions and trade-offs:** relevant reasoning, alternatives, compatibility implications. Create/update an ADR for high-impact choices.
4. **Reusable knowledge:** update a related spec, guide, API contract, or `docs/research/<topic>.md` for meaningful research. Avoid dumping unfiltered AI transcripts.
5. **New work and dependencies:** create/link follow-on issues, update `blocked by` edges, and identify any newly unblocked tickets.
6. **Review + rights:** link review outcome, identify contributors and third-party provenance, follow licensing safeguards in `CONTRIBUTING.md`.

A negative feasibility result can be **Done** when the original question was rigorously answered. A failed implementation should be clearly marked as a rejected experiment or superseded rather than misrepresented as production-ready.

### Paste-ready handoff in a PR or issue

```markdown
### Knowledge handoff

**Outcome:** 
**Verified:** (commands, environment, observations, links)
**Not verified / remaining risks:** 
**Decisions / alternatives:** 
**Docs / ADR / research updated:** 
**Follow-up issues and dependency changes:** 
**Integration notes for the next contributor:** 
```

Avoid fragile summaries only in ephemeral AI memory. The next contributor should be able to understand the outcome without accessing anyone else's chat history.

## Protection from integration chaos

- Prefer a fresh branch or Git worktree per active implementation session.
- PRs target `main` and remain small enough to review; do not push directly to `main` as a development workflow.
- Do not merge two changes to the same shared contract until their compatibility is reviewed.
- Draft PRs are welcome for exploratory implementations, but they do not automatically complete an issue.
- Keep critical architecture decisions public, ideally in `docs/decisions/`, with links to the motivating Discussion/Issue/PR.
- If automated tests do not exist yet, explicitly say so and provide a minimal manual reproduction.
- Different contributors' AI assistants may have conflicting local instructions. **Repository rules and accepted decisions prevail** for the shared project; contributors may propose those rules be changed through PRs.
- All merge decisions remain under the governance and licensing requirements in `GOVERNANCE.md` and `LICENSING.md`.

## What not to automate yet

- No automatic assignment or claiming of issues on agent startup.
- No mass creation of speculative tickets just to fill the board.
- No unattended installation of third-party skills or overwriting of personal/global agent configs.
- No requirement to use Matt Pocock skills; a contributor using plain GitHub and an editor must be first-class.
- No automated merge or issue closure merely because an agent says a task is complete.

## Acceptance criteria for this proposed workflow

- Two contributors can take two unblocked issues simultaneously and work in separate branches.
- A third contributor can see blockers, assignees and current status in GitHub without reading private AI chats.
- A completed research ticket leaves behind reproducible results and unblocks or refines the next issues.
- A contributor who has never used Matt's skills can follow the same process.
- An agent with Matt's skills does not impose a global one-ticket-at-a-time restriction or start modifying board status without permission.

References:
- https://github.com/mattpocock/skills
- https://github.com/mattpocock/skills/blob/main/docs/engineering/to-tickets.md
- https://github.com/mattpocock/skills/blob/main/docs/engineering/implement.md

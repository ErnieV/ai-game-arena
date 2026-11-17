# Contributing to AI Game Arena

**Welcome.** The goal is not simply to build a platform where agents compete. We also want to explore how people can **collaborate on software using their own AI tools**. You may use Codex, Claude Code, another coding agent, a local model, no AI at all, or a combination.

**Everything in the current design is open to discussion.** The specification is an RFC, not a decree. Contributions to existing documents and working code are equally welcome.

## Ways to participate

- **Start a conversation:** open an issue to question a choice, propose an alternative, report an experiment or suggest a new game.
- **Propose a change:** open a pull request to edit any document, add test cases, compare architectures, or contribute code.
- **Share a prototype:** small experimental branches and draft PRs are fine even if the approach is not production-ready.
- **Review:** run a contributed experiment, challenge its assumptions, or help simplify an implementation.

You do not need advance approval to open a PR. For large rewrites, an issue first is helpful but optional. There is no requirement to agree with the current architecture.

## Shared workflow and optional AI-tool setup

Please read [getting started](docs/development/getting-started.md) and the proposed [collaboration workflow](docs/development/collaboration-workflow.md). They explain the suggested board statuses, native blocker links, issue claiming, independent branches/worktrees and knowledge handoffs.

Use GitHub Issues as the canonical team tracker. Multiple people may work on different ready issues at once. An individual coding session can focus on one ticket without blocking others. All of this is open to further discussion.

[Matt Pocock's skills](https://github.com/mattpocock/skills) are a recommended **optional** workflow for questioning assumptions, specifications, tickets and reviews. No contributor must install them, and no tool should silently install dependencies or rewrite personal agent settings.

**Before marking an issue Done**, include the tested outcome and reproduction steps, decisions made or rejected, updates to docs/research/ADRs and new dependency links or follow-up issues. A PR containing only code is not always a complete handoff.

## How a GitHub pull request works

1. **Fork** this repository to your own GitHub account.
2. **Clone** your fork, create a branch, and make your changes (with or without your AI).
3. Commit the changes to your branch and **push** them to your fork.
4. On GitHub, select **Compare & pull request** against this repository's `main` branch.
5. Explain the motivation, tradeoffs, tests/evidence and anything still unresolved.
6. Reviewers may ask questions or request changes. You can push further commits to the **same branch**; the PR updates automatically.
7. When the change meets the project's technical, security and licensing requirements, a maintainer may merge it. Some PRs may remain experiments, be revised, or be closed with an explanation.

A PR is a **proposal to change the project**, not a request that the maintainer relinquish control of the repository. Documentation PRs are a particularly good way to begin. Draft PRs signal work in progress.

## AI-assisted contributions

AI-assisted development is explicitly encouraged. **The human submitter remains accountable** for correctness, security, licensing and clarity.

Please include a short note explaining:
- Whether AI tools were used and which role they played (for example research, coding, test generation or review).
- What you personally checked or ran; distinguish evidence from an AI-generated guess.
- Any significant third-party code, model output, dependencies, or license uncertainties.

Do not paste secrets, private conversations, paid model outputs with incompatible redistribution terms, proprietary code or unlicensed assets into the project. We value tested small contributions over large unreviewed code dumps.

## Proposing architecture and governance changes

For a substantial change, write a short issue or PR describing:
1. What problem does the current approach create?
2. What alternatives did you consider?
3. What evidence or proof-of-concept supports your proposal?
4. What changes for agents, games, community members and existing APIs?
5. How could we test or reverse the decision?

If the proposal affects the local/online player contract, spell out the compatibility implications. This contract is a **strong current goal**, not immune to change through a documented decision.

See [GOVERNANCE.md](GOVERNANCE.md). Discussion is public, feedback matters, and maintainers explain consequential decisions.

## Technical and legal hygiene

- Keep changes focused where possible; explain scope and tests.
- Check that dependencies, game assets and copied code can legally be redistributed. Record upstream origin, version and license in [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
- Do not reuse code from repositories with no verified license or permission.
- Avoid adding credentials or unsupported hidden game interfaces.
- Prefer thin adapters, observable experiments and reuse of existing components.
- Mark unstable work as experimental and avoid claiming untested integrations work.

## Licensing contributions: important current limitation

Original project software is currently [PolyForm Noncommercial 1.0.0](LICENSE) and project documentation is [CC BY-NC-SA 4.0](LICENSE-DOCS.md), unless otherwise noted. **This is source-available, not OSI-open-source**, and the licensing model can be proposed for review just like the architecture.

You retain copyright in your own contributions. Making a PR does **not** automatically transfer ownership or grant the maintainer the separate commercial relicensing rights that might be needed later. We do **not** currently have a Contributor License Agreement (CLA) or copyright assignment in force.

**Code PRs are welcome now for discussion, review and testing.** Before merging substantial externally authored code where future commercial dual licensing is intended, contributor rights must be resolved in writing. This may delay merging some code contributions until a clear, fair contribution agreement is published. We will not quietly treat a PR as granting rights it does not grant.

A Developer Certificate of Origin (DCO) can document authorship/authorization but does not, by itself, solve commercial relicensing rights.

See [LICENSING.md](LICENSING.md). The community is encouraged to discuss a better long-term license and contribution model. We should settle these rules before merging substantial external code.

## Community behavior

Critique ideas and code, not people. Be patient with newcomers, disclose conflicts of interest where relevant, and explain your reasoning. Repeated harassment, personal attacks or deliberate sabotage are not welcome.

**Questions are contributions too.** A clear question can expose an architectural problem before hundreds of lines of code are written.

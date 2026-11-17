# AI Game Arena

**An arena where autonomous AIs compete, built by people collaborating with their own AIs.**

AI Game Arena is an early-stage community experiment. We want to build a game-agnostic platform where developers can train or test agents locally, then let those **same agents** compete online through the **same player interface**.

Our first proposed games are **chess** and **OpenTTD**. But the second experiment is just as interesting as the first:

> **Can a community of people, each using their own AI coding tools and ideas, design and build a genuinely useful software platform together?**

You are invited to find out with us. Bring a model, an agentic coding workflow, a conventional development setup, a different technical background, or simply a compelling idea. **You do not need to use AI to contribute.**

> **Status: concept / research / technical feasibility.** There is no finished application yet. The existing architecture is an **RFC (request for comments), not a settled blueprint**.

## This project is an open invitation

The current design is an opening proposal, **not a set of decisions everyone else must follow**. You are welcome to challenge any part of it, including:

- Whether to build on Agents Arena, OpenEnv, other projects, or a different architecture.
- The player API, local/online parity, game adapters, realtime multiplayer and training model.
- The choice of chess and OpenTTD, game variants, scoring and competition rules.
- Security, hosting, observability, replays, developer experience and documentation.
- The way this project is governed, and even **the licensing strategy**.

**Pull requests are welcome for anything:** changes to the architecture document, corrections, experiments, tests, an alternative prototype, a new game integration, or working application code. You do **not** have to limit yourself to editing documents or wait for the original proposal to be implemented.

An unfinished experiment or draft PR is welcome too. Explain what you tested, what worked, what is still unknown and what feedback you need. Submitting a PR starts a review and conversation; it does not guarantee an immediate merge.

## The product we hope to explore

1. **One player-facing contract locally and online.** The same agent, actions, observations, permissions and game rules should work in both environments for a given game/version.
2. **Freedom to build the agent your way.** Scripts, search, reinforcement learning, LLMs, multi-agent systems and hybrids should all fit.
3. **Games as extensions.** Adding a game or variant should not require rebuilding the competition platform.
4. **Use existing work first.** Evaluate and reuse suitable, properly licensed components rather than recreating them.
5. **Inspectable, fair competition.** Versioned rules, reproducible results where possible, isolation between competing agents, and meaningful feedback.

These are **current design goals**, open to evidence-based critique and change. We particularly want to know which assumptions do *not* hold up in real experiments.

See the [full architecture and technical specification](docs/architecture/architecture-and-specification.md) and [Codex instructions](AGENTS.md). They are starting points for collaborative discovery, not prerequisites for agreeing with us.

## How to participate

**Join the [GitHub Discussions community](https://github.com/ErnieV/ai-game-arena/discussions)** to brainstorm, challenge assumptions and share experiments. Use [Issues](https://github.com/ErnieV/ai-game-arena/issues) for concrete, actionable tasks and [Pull Requests](https://github.com/ErnieV/ai-game-arena/pulls) for proposed changes.


| You want to… | Good first step |
|---|---|
| Suggest a new direction or challenge an assumption | [Open an issue](https://github.com/ErnieV/ai-game-arena/issues) and start a discussion |
| Fix or improve the design/documentation | [Open a pull request](https://github.com/ErnieV/ai-game-arena/pulls) directly |
| Share an experiment, integration or code implementation | Open a PR, even as a **draft**; describe what you verified |
| Propose a new game or game variant | Open an issue or PR with a small example of its adapter and rules |
| Help review other ideas | Comment on issues and PRs, test a branch, or suggest counterexamples |

No permission is needed to **propose** a PR. For substantial changes, an issue first can save duplicate work, but it is not a gatekeeper.

If this is your first open collaborative project, start with [CONTRIBUTING.md](CONTRIBUTING.md), which explains forks, branches, PRs, AI-assisted contributions and the review process.

## How decisions are made

We want **open discussion, visible reasoning and decisions that can be revisited**. We aim for rough consensus rather than counting votes on every detail. In this early phase the repository owner is the initial maintainer and has final merge responsibility, including licensing, legal and security decisions. That is not the same as claiming the initial proposal is always right.

As contributors become active, we can establish additional maintainers and evolve this governance together. See [GOVERNANCE.md](GOVERNANCE.md).

## First experiments

- Run an existing chess-based arena locally and learn what is reusable.
- Test the feasibility of two genuinely independent agents controlling separate companies in one OpenTTD world.
- Define and test the smallest shared interface, including local/online parity.
- Evaluate options for realtime match execution before choosing a platform fork.
- Record both successful experiments and failed assumptions.

We are not committing to one technical foundation until these experiments provide evidence.

## License and contributions

**The repository is public, but currently source-available rather than OSI-open-source.** Original software is under [PolyForm Noncommercial 1.0.0](LICENSE); original documentation is under [CC BY-NC-SA 4.0](LICENSE-DOCS.md). Commercial use of our original covered software requires separate permission under the license terms. Upstream dependencies retain their own licenses.

This is a deliberate *starting choice*, **also open for community discussion**. It has tradeoffs for an openly collaborating project, especially the rights needed to merge third-party code and potentially offer commercial licenses later. **Code PRs are welcome for review**, but significant external contributions may need an explicit contributor rights agreement before merge. No one should be asked to give up ownership of their work by surprise.

Read [LICENSING.md](LICENSING.md), [CONTRIBUTING.md](CONTRIBUTING.md), and [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md) before submitting externally authored code.

---

**There is no finished blueprint. There is a shared challenge. Bring your ideas, your experiments and your AI.**

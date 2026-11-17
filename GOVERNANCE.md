# Governance: building AI Game Arena together

## Purpose

This project explores two ideas at once:

1. A multi-game competition platform where independently designed AI agents can play under common rules.
2. An experiment in collaborative software development where contributors may build and review changes using **their own AI tools**.

Our architecture, product direction, technical dependencies, governance and licensing policy are all proposals that the community may challenge.

## Current governance model: open discussion, maintainer stewardship

At project inception, **ErnieV is the founding repository maintainer**. Anyone may propose changes through issues and pull requests; anyone may explain objections or supply better evidence.

We aim for **rough consensus backed by technical evidence**, not a popularity contest or automatic majority vote. The maintainer currently decides when to merge, defer or reject a change and is responsible for protecting repository integrity, respecting licenses and keeping the project usable.

For major decisions we will document the rationale, alternatives and outstanding concerns. Important decisions are **revisitable** when new evidence appears.

This is participatory governance, **not yet formal one-person-one-vote democracy**. We will not advertise it as such until we agree and implement a voting or delegated model. Community governance itself is open to PRs.

## What proposals can change

Everything in the initial RFC can be questioned, including the architecture, OpenEnv usage, choice of existing arena, game support, interface conventions, competition rules, documentation style and license approach.

Some constraints come from law, safety, security or agreements with upstream projects; these are not overridable by a community vote.

## Lightweight decision process

**Small changes:** open a PR; reviewers can comment; maintainer merges when appropriate.

**New features, game adapters and technical experiments:** an issue or draft PR with motivation, dependencies and test evidence. Multiple competing prototypes are welcome. We need not pick one before experimenting.

**High-impact changes:** such as a breaking Agent API change, engine rewrite, major dependency change, new governance process or license change should have an issue/RFC describing impact and alternatives, with a reasonable public discussion opportunity before a decision. Urgent security fixes may be handled faster.

**When there is disagreement:** summarize the competing positions, seek empirical evidence, identify a reversible experiment if possible and record the outcome. Decisions can be revisited.

**When a proposal is not merged:** give a concise explanation (for example scope, evidence, maintainability, security, incompatibility, ownership or license) rather than leaving contributors guessing.

## Roles and how they might evolve

- **Contributor:** anybody who opens an issue, PR, review or experiment.
- **Reviewer:** contributor helping test and evaluate others' changes; initially informal.
- **Maintainer:** trusted person who can merge and help steward releases; initially the repository owner.

Over time, we can invite regular, trusted contributors to become reviewers and additional maintainers. Criteria and process should be discussed openly. No promise of automatic promotion is implied.

## Transparency and autonomy

Contributors choose their own AI models and development workflows. The project does not require a particular AI vendor or IDE. Human submitters take responsibility for AI-assisted contributions, testing and rights.

Project discussions should happen in GitHub issues and PRs when possible, to avoid important decisions being locked in private conversations.

## Contribution rights and commercial interests

The current license choice intentionally limits commercial use, which may reduce who can participate or reuse code. This is a real tradeoff and a legitimate topic for public discussion. The maintainer cannot unilaterally relicense contributions owned by others for commercial distribution without appropriate rights.

No formal CLA exists yet. Code PRs are welcome for review but may require a contributor rights agreement before merge. See [CONTRIBUTING.md](CONTRIBUTING.md) and [LICENSING.md](LICENSING.md).

A change in licensing policy cannot retroactively override existing contributors' copyrights or the licenses of third-party dependencies.

## First governance checkpoint

Before the first substantial external-code merge, agree on clear inbound contribution rights. After a small core contributor group forms, review whether this initial maintainer-led model should evolve into a more formal shared-maintainer or voting system.

**The guiding principle:** invite competing ideas, favor evidence over authority, document decisions, and leave room for the project to become something its original author did not imagine.

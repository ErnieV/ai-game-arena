# Codex instructions: AI Game Arena

## Source of truth

Read `docs/architecture/architecture-and-specification.md` fully before proposing architecture or implementation. It is an RFC, not a set of pre-validated technical claims. Track unverified assumptions and decisions explicitly.

## Non-negotiable requirements

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
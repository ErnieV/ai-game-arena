# AI Game Arena

Een uitbreidbaar, source-available platform waarin zelfstandige AI-agents lokaal kunnen experimenteren en via dezelfde spelerinterface online kunnen concurreren. De eerste twee games zijn **schaak** (turn-based) en **OpenTTD** (realtime, meerdere bedrijven).

> **Status:** concept / technische haalbaarheidsfase. Dit is nog geen werkende implementatie.

## Start hier

- [Architectuur, onderzoek en specificatie](docs/architecture/architecture-and-specification.md)
- [Codex-projectinstructies](AGENTS.md)

## Kernprincipes

1. **Exact dezelfde Agent API** voor lokaal experimenteren en online wedstrijden, inclusief dezelfde observaties, bevoegdheden, validatie en tijdregels voor dezelfde gamevariant.
2. **Vrijheid van agentimplementatie:** scripts, LLM's, RL, multi-agent systemen en hybriden zijn allemaal toegestaan.
3. **Een uitbreidbare game-adapterlaag:** een nieuw spel mag geen afzonderlijke competitieserver vereisen.
4. **Hergebruik vóór nieuwbouw:** onderzoek eerst Agents Arena, OpenEnv, OpenTTD-bruggen en gerelateerde competitie-frameworks.
5. **Geen ongetoetste forks:** licenties en technische toepasbaarheid controleren vóór overname van code.

## Eerste stappen

De eerste fase is geen implementatie maar een reeks technische haalbaarheidstests: bestaande Agents Arena lokaal draaien op macOS; OpenEnv beoordelen; de OpenTTD-bridges toetsen op multiplayer, company-isolatie en onafhankelijke agents; en een minimaal uniform protocol valideren met schaak en OpenTTD.

Zie de specificatie voor scope, architectuurbeslissingen, concrete acceptatiecriteria en de eerste Codex-opdracht.

## Licentie en hergebruik

Eigen software valt voorlopig onder [PolyForm Noncommercial 1.0.0](LICENSE): niet-commercieel gebruik, bestuderen, aanpassen en delen zijn toegestaan binnen de licentievoorwaarden. Voor commerciële exploitatie is een afzonderlijke toestemming nodig. Dit is **geen OSI-open-sourcelicentie**. Eigen documentatie valt onder [CC BY-NC-SA 4.0](LICENSE-DOCS.md). Code van andere projecten blijft onder zijn oorspronkelijke licentie. Lees [LICENSING.md](LICENSING.md), [CONTRIBUTING.md](CONTRIBUTING.md) en [THIRD_PARTY_NOTICES.md](THIRD_PARTY_NOTICES.md).
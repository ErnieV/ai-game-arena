# Third-party components and licensing register

This repository starts with design documentation, **not integrated third-party source**. The following are evaluation candidates, not code already copied or licensed to us.

| Project | Potential reuse | Initial licensing concern | Decision gate |
|---|---|---|---|
| Agents Arena | Competition service, chess, spectators, rankings | MIT reported; verify exact revision/notices | Assess adaptability, keep MIT notices |
| OpenEnv | Optional training orchestration | BSD-3-Clause reported; verify version | Use as dependency, not competing agent API |
| OpenTTD | Game engine | GPLv2; combined work/distribution obligations | Retain separately, review coupling |
| Joost's `jplattel/openttd-llm` | Realtime OpenTTD AI bridge | No explicit license verified | **Do not copy** pending permission |
| Agent OpenTTD Arena | Alternative game bridge | MIT reported; verify version | Technical and license review |
| RL-Arena | Tournament design reference | License depends on component; verify | Prefer learning, not copying source |

Before introducing a dependency or vendored source, record: repository URL, precise commit/version, SPDX identifier, license text/notice location, reuse method, compatibility and approval.

Do not claim that PolyForm restrictions apply to third-party MIT, BSD or GPL code simply because that code is in this monorepo.
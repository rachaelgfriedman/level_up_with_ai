# Trainee starter overlay manifest

## Purpose

This manifest defines the starting state for the Governed & Scalable AI-assisted
Analytics with dbt workshop. Facilitator-only material is never trainee evidence.

## Starting-state asset map

| Asset | Trainee state | Workshop treatment |
|---|---|---|
| `AGENTS.md` | Three bounded discovery TODOs | Complete in Demo 3 from active project evidence |
| `SECURITY.md` | Ready policy scaffold | Explain boundaries and human ownership |
| `.agents/ROUTING.md` | Ready | Inspect in Demo 4 and use throughout |
| `building-governed-skills` | Ready | Use to create one staging skill |
| `planning-governed-source-to-mart` | Ready | Validate and approve the two-model spec |
| `building-governed-source-to-mart` | Ready | Enforce readiness and build in Demo 7 |
| `authoring-staging-models` | Intentionally absent in the trainee overlay | Build in Demo 5 and harden in Demo 6 |
| `authoring-governed-marts` | Ready | Used by orchestration; trainees do not author it |
| `authoring-intermediate-models` | Ready generic capability | Not used by this two-model slice |
| `docs/merlinco/ALEMBIC_BUILD_SPEC.yml` | Approved two-model design, verification not run | Reconfirm readiness and use as sole evidence artifact |
| `stg_alembic_ops__brew_events` | Absent from its real staging folder | Created only after readiness passes |
| `fct_brews` | Absent from its real mart folder | Created only after staging and readiness pass |

## Workshop progression

1. Demo 2 runs an underspecified attempt on a throwaway branch or keeps it uncommitted.
2. Demo 3 completes the three project-discovery TODOs.
3. Demo 4 traces policy, routing, planning, build, and review and identifies the one
   missing trainee skill.
4. Demo 5 creates `authoring-staging-models`; Demo 6 cross-reviews and hardens it.
5. Demo 7 confirms both target models are absent, then builds the approved slice.
6. Demo 8 reviews implementation and verification against the same spec.

## Starter validation

- [ ] Root `AGENTS.md` contains exactly three deliberate discovery TODOs.
- [ ] `dim_shops` and `fct_brews` do not exist in their real folders.
- [ ] Existing semantic YAML is unchanged.
- [ ] The spec plans two models, two properties files, seven data tests, and
      `dbt build --select +fct_brews`.
- [ ] The trainee overlay omits `authoring-staging-models`; required ready skills remain.
- [ ] `dbt ls --resource-type model` contains no trainee target nodes.
- [ ] `dbt parse --no-partial-parse` passes before implementation.
- [ ] The orchestrator stops cleanly if either target already exists or a required
      skill/spec field is missing.

## Maintenance

Update this manifest when workshop sequencing, readiness gates, active skills, or dbt
Platform behavior changes.

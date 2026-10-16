# AI task routing

Read `AGENTS.md` and `SECURITY.md` first. Start from the requested outcome, then load
the smallest applicable skill. Always-on policy remains authoritative.

## Routing rules

1. Inspect project evidence before substantive claims or edits.
2. Use one primary skill; add another only when the outcome genuinely spans tasks.
3. Separate planning from implementation when human approval is required.
4. Do not substitute facilitator-only material or generic notes for the active spec.
5. Stop at missing readiness requirements and resolve them through the proper route.
6. Follow `SECURITY.md` for restricted, destructive, production, or external actions.

## Routes

| Requested outcome | Primary skill | Readiness / handoff |
|---|---|---|
| Plan the Alembic two-model slice | `planning-governed-source-to-mart` | Produce one approved project-owned spec; do not implement. |
| Build the approved slice | `building-governed-source-to-mart` | Approved spec, active staging and mart skills, and both target models absent. |
| Create or revise a reusable skill | `building-governed-skills` | Define outcome, invariants, human boundary, evidence, owner, and route. |
| Create or change a staging model | `authoring-staging-models` | Preserve one-source grain and validate normalization. |
| Create or change an intermediate model | `authoring-intermediate-models` | Use only when joins, deduplication, aggregation, or grain change are required. |
| Create or change a public dimension or fact | `authoring-governed-marts` | Enforce approved interface, contract, tests, and consumer assessment. |
| Change governed semantics | `authoring-governed-metrics` | Requires approved business definition; Day 2 owns the Alembic extension. |
| Review material dbt changes | `reviewing-governed-dbt-changes` | Compare diff and evidence with the approved artifact. |
| Investigate a dbt Platform run | `investigating-dbt-job-failures` | Diagnose run evidence before routing code changes. |
| Documentation-only change | `AGENTS.md` | Apply proportionate validation; reroute if scope becomes material. |

For the workshop slice, trainees author only `authoring-staging-models`; the mart skill
is a ready project capability. No intermediate model is planned.

## Cross-route boundaries

Every route preserves unaffected interfaces and semantic definitions, consumes
approved decisions exactly, prompts back on unsupported meaning or risk, uses scoped
execution, and relies on contracts, tests, lint, CI, review, and humans as independent
enforcement. Do not create duplicate planning or evidence artifacts.

## Maintenance

Review this map when skills, readiness gates, project conventions, or platform behavior
change.

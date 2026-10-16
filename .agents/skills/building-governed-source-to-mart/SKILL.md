# Build an approved governed source-to-mart slice

Use this skill when an approved project-owned build spec is ready for implementation.

## Trigger and goal

For Merlin & Co., implement the two-model Alembic slice in the real staging and mart
folders. Match the approved inventory, lineage, ordered outputs, properties, tests,
and contract; prove behavior; update only spec verification; then hand off to review.

## Non-goals

- Do not create, reinterpret, amend, or approve the design.
- Do not add plausible models, columns, tests, metrics, cleanup, or dependencies.
- Do not use facilitator-only, generated, or vendored content as implementation input.
- Do not create a second plan, checklist, review file, or validation report.
- Do not change existing semantic YAML for this Day 1 slice.

## Required context and evidence

Inspect project policy, routing, `dbt_project.yml`, the approved spec, git state,
source declarations, active staging and mart skills, representative unrelated models,
actual source/input columns, and prior verification findings when resuming.

## Output invariants

- Create only the exact two SQL models and two properties entries in the spec.
- Preserve source grain through staging and fact; introduce no intermediate model.
- Publish exactly the ten approved fact columns in order with contract-aligned casts.
- Preserve null brew durations and derive only `brewed_date` in the fact.
- Add exactly the seven planned data tests and no semantic definitions.
- Keep verification truthful and preserve explainable partial work after failure.

## Approval and readiness gate

Before editing implementation or verification, require:

- approved plan and decisions with passed coherence checks;
- active `authoring-staging-models` and `authoring-governed-marts` skills;
- configured project-owned target paths;
- absence of `stg_alembic_ops__brew_events` and `fct_brews` SQL/properties entries;
- exact two-model inventory, bounded `+fct_brews` selector, structural rules, and data
  checks;
- `verification.status: not_run` or an explainable prior `failed` attempt.

A readiness failure identifies the exact field or file and makes no changes.

## Workflow

1. Lock the approved two-model scope and set verification `in_progress` only after the
   full readiness gate passes.
2. Load `authoring-staging-models`; create the one-source brew staging model and its
   properties entry with exact ordered outputs and two key tests.
3. Load `authoring-governed-marts`; create `fct_brews` directly from staging with its
   enforced ten-column contract and five requested tests.
4. Parse and compare SQL outputs, properties, tests, types, dependencies, and model
   count with the spec.
5. Lint the two real model paths and run `dbt build --select +fct_brews`.
6. Run warehouse checks for 8,000-row retention, unique brew grain, quality values,
   71 preserved null durations, both relationships, and date derivation.
7. Update only spec verification with current evidence and hand off to governed review.

## Prompt-back conditions

Stop for missing readiness, unexplained target files, source/spec contradiction,
impossible cast, unexpected quality value, row loss, key failure, relationship failure,
contract mismatch, unapproved public/semantic change, unavailable required evidence,
or unclear security/action authority. Route design changes back to planning.

## Validation and completion evidence

Completion requires exactly two planned models and two properties files, seven passing
data tests, enforced fact contract, successful lint and `+fct_brews` build, warehouse
acceptance checks, no semantic change, and `verification.status: passed` with
`ready_for_review: true`.

## Behavioral acceptance

**Scenario:** The approved plan defines one staging view and one contracted fact. Both
targets are absent, but profiling finds 72 null durations instead of the recorded 71.

Expected behavior: implement no unapproved imputation, preserve nulls, stop the attempt
with truthful failed verification if work started, and return the changed fixture fact
to planning/evidence reconciliation. Resume only after the spec is updated and approved.

## Ownership and maintenance

Analytics engineering owns orchestration; staging and mart skill owners own execution
guidance; the data-product owner owns public meaning. Review after readiness bypasses,
spec drift, duplicate execution, or missed acceptance defects.

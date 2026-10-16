# Prompt: build the Alembic exercise

```text
Use `building-governed-source-to-mart` to implement the approved two-model slice in
`docs/merlinco/ALEMBIC_BUILD_SPEC.yml` directly in the canonical staging and mart
folders.

Enforce the readiness gate first: `stg_alembic_ops__brew_events` and `fct_brews` must
not exist yet in their real folders. Follow the active staging and mart guidance in
dependency order, implement exactly the approved columns and tests, preserve null brew
durations, and leave existing semantic YAML unchanged.

Run the specified parse, lint, `dbt build --select +fct_brews`, and warehouse checks.
Record verification only in the spec. Stop with the exact blocker if evidence
contradicts the approved design.
```

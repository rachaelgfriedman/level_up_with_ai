# Prompt: plan the Alembic exercise

```text
Use `planning-governed-source-to-mart` to validate and, if needed, refine the approved
two-model Alembic plan in `docs/merlinco/ALEMBIC_BUILD_SPEC.yml`.

The trainee products use canonical names and real project folders:
- `models/staging/alembic_ops/stg_alembic_ops__brew_events.sql`
- `models/marts/fct_brews.sql`

The staging model cleans one raw brew event source. The contracted fact reads directly
from staging, publishes the approved ten columns, preserves null brew durations, and
uses the requested key, relationship, and quality-domain tests. Existing semantic YAML
is deferred to Day 2.

Confirm the readiness gate requires both target models to be absent before building.
Use active project and warehouse evidence only. Do not implement while planning.
```

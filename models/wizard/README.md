# Wizard participant workspace

Participants build their own governed Alembic procurement solution here. The validated reference implementation lives in the canonical `models/staging/`, `models/intermediate/`, and `models/marts/` layers; do not edit those canonical models during the exercise.

Use the mirrored layer paths:

```text
models/wizard/staging/
models/wizard/intermediate/
models/wizard/marts/
```

Append `__wizard` to every participant model filename and use those suffixed names in `ref()` and properties YAML. For example: `stg_alembic_ops__suppliers__wizard.sql`, `int_potion_supply_cost__wizard.sql`, and `fct_brews__wizard.sql`. This keeps participant nodes distinct from the enabled canonical reference models.

Plan and implement from active project evidence and the participant's approved build spec. Do not use facilitator reference assets or retired answer-key models as implementation input.

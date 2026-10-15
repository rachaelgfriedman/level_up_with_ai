# Prompt: Planning the participant solution

Use this prompt to plan the Wizard Alembic slice.

```text
Use `planning-governed-source-to-mart` to plan a participant Alembic procurement slice from active project and warehouse evidence. Keep implementation under `models/wizard/` and append `__wizard` to every participant model name so it can coexist with the canonical reference implementation.

The requested public products are participant versions of:

- `dim_suppliers`, at one row per supplier, for procurement analysis;
- `fct_brews`, at one row per brew event, for production analysis, including estimated standard ingredient supply cost based on recipe quantities and current ingredient unit costs.

Preserve all brew events. Actual procurement cost, margin, production-to-sales allocation, and Semantic Layer additions are out of scope unless explicitly approved during planning.

Discover the required staging and intermediate lineage from active project conventions, source definitions, and warehouse evidence. Do not inspect or use `training_assets/reference/`, retired answer-key models, or canonical Alembic implementation SQL as planning evidence. Do not implement models while planning.
```

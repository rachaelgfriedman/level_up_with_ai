# Demo 8 — How to review

## Summary

Review the completed two-model implementation against approved intent and independent
evidence using the governed-review skill.

## Review checklist

- Exactly two planned models exist in the real staging and mart folders.
- Staging preserves 8,000-row brew grain and approved cleanup.
- The fact reads directly from staging and exposes exactly ten ordered columns.
- Seven planned data tests and the enforced contract pass.
- Null durations remain null and `brewed_date` matches `brewed_at::date`.
- Existing semantic YAML is unchanged.
- The diff is bounded and verification evidence is current.

## Prompt

```text
Use `reviewing-governed-dbt-changes` to review the completed Alembic implementation
against `docs/merlinco/ALEMBIC_BUILD_SPEC.yml`. Inspect SQL/YAML, lineage, contract,
tests, verification evidence, and diff. Classify findings as must fix before merge,
needs human decision, or suggestion, and give an explicit outcome.
```

## Evidence commands

```text
dbt parse --no-partial-parse
dbt build --select +fct_brews
dbt lint --select stg_alembic_ops__brew_events fct_brews --format human
```

Verify existing run evidence first; rerun only the narrow check needed for a finding.

## Exit state

Trainees can produce an evidence-backed review outcome and explain remaining human
approval before merge.

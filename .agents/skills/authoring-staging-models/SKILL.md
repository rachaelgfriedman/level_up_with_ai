# Author source-facing staging models

Use this skill when creating or materially changing a dbt model that cleans one raw source table without changing its grain.

## Trigger and goal

Create a thin, source-facing model with one `source()` input, explicit cleanup, stable naming, preserved row retention, and evidence-backed tests.

## Non-goals

- Do not join, aggregate, deduplicate, or apply business classifications.
- Do not invent columns, mappings, accepted values, or null handling.
- Do not use participant, facilitator, answer-key, generated, or vendored code as implementation input.

## Required context and evidence

Read the approved build spec when the model is planned work, the source declaration, actual source columns and values, applicable macros, `dbt_project.yml`, the style guide, and one unrelated canonical staging pattern. Profile keys, nulls, castability, transformed categorical values, and source/output row retention.

## Output invariants

- Exactly one approved source table feeds the model.
- Output grain and row count are preserved unless the approved spec explicitly says otherwise.
- Only approved renames, casts, trimming, case normalization, and shared macro calls are applied.
- The ordered output columns and properties match the approved spec.
- Primary keys and required fields receive evidence-backed tests; normalized categoricals use observed post-transformation values.

## Workflow

1. Ground the source schema and planned transformed outputs with warehouse evidence.
2. Implement import, transformation, and `final` CTEs with an explicit ordered projection.
3. Add or update only the approved properties entries and tests.
4. Run `dbt parse`, then validate the model through the orchestrator's bounded build selector.
5. Hand off grain, retention, key, cast, and categorical evidence to orchestration or review.

## Prompt-back conditions

Stop for unresolved source authority, grain, key, lossy cast, row filtering, categorical mapping, null policy, or a contradiction between source evidence and the approved spec. State the evidence, viable choices, recommendation, owner, and narrow approval question.

## Validation and completion evidence

Completion requires parsed SQL/YAML, a successful scoped execution that exercises the staging model, passing attached tests, and warehouse evidence for grain, retention, keys, casts, nulls, and transformed accepted values.

## Behavioral acceptance

If a planned lowercase categorical test is based on title-case raw values, profile `lower(trim(column))`, test the transformed domain, and stop if an unapproved value remains. Do not weaken the test or preserve inconsistent case silently.

## Ownership and maintenance

Analytics engineering owns staging behavior; source owners decide source meaning. Review after source schema changes, repeated cast/test failures, or changed dbt conventions.

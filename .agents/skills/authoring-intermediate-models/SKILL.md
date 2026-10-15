# Author grain-changing intermediate models

Use this skill when creating or materially changing a dbt model that owns joins, deduplication, aggregation, enrichment, or fanout control.

## Trigger and goal

Implement one approved grain transition with explicit inputs, cardinality, retention, arithmetic, and fanout controls while keeping the model ephemeral unless the approved spec says otherwise.

## Non-goals

- Do not publish a public interface or add semantic definitions.
- Do not invent join keys, fallback logic, formulas, units, deduplication rules, or record-retention behavior.
- Do not use participant, facilitator, answer-key, generated, or vendored code as implementation input.

## Required context and evidence

Read the approved build spec, all upstream model outputs and properties, actual input key distributions, applicable macros, `dbt_project.yml`, the style guide, and one unrelated canonical intermediate pattern. Profile duplicates, null keys, match rates, unmatched populations, units, and control totals.

## Output invariants

- Inputs, join types, keys, cardinalities, filters, grouping columns, formulas, and ordered outputs exactly match the approved spec.
- The declared output grain is enforced without accidental fanout or silent record loss.
- Units, precision, and null propagation remain explicit.
- Properties and tests describe the post-transformation output.

## Workflow

1. Profile each input at its declared grain and establish join cardinality and retention expectations.
2. Implement import CTEs, bounded transformation CTEs, fanout controls, and an explicit `final` projection.
3. Preview the development SQL to validate grain, retention, nulls, match rates, and arithmetic.
4. Execute ephemeral SQL through the approved downstream mart build and run attached tests.
5. Hand off cardinality, fanout, retention, and control-total evidence.

## Prompt-back conditions

Stop for unsupported joins, ambiguous deduplication, unexpected many-to-many behavior, unmatched rows that affect retention, unclear units/formulas, or any conflict with the approved spec. State the evidence, options, recommendation, owner, and narrow approval question.

## Validation and completion evidence

Completion requires successful execution through a materialized downstream node, passing tests, and warehouse evidence for grain uniqueness, join cardinality, row retention, fanout, null behavior, units, and arithmetic controls.

## Behavioral acceptance

If a recipe-to-ingredient join multiplies brew rows, preserve recipe detail only at its approved grain, aggregate supply cost before joining to brews, and prove the final brew grain. Stop if the required allocation or aggregation rule is not approved.

## Ownership and maintenance

Analytics engineering owns intermediate behavior; data-product owners decide business formulas and retention. Review after fanout defects, changed source cardinality, or changed project conventions.

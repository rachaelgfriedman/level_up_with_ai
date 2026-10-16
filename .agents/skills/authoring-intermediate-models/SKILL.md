# Author grain-changing intermediate models

Use this skill when a model owns joins, deduplication, aggregation, enrichment, or
fanout control. The current Alembic exercise does not require this skill.

## Trigger and goal

Implement one approved grain transition with explicit inputs, cardinality, retention,
arithmetic, and fanout controls while preserving the configured materialization.

## Non-goals

- Do not publish a public interface or add semantic definitions.
- Do not invent join keys, fallback logic, formulas, deduplication, or retention.
- Do not use facilitator-only, generated, or vendored code as input.

## Required context and evidence

Read the approved spec, upstream outputs/properties, actual key distributions,
applicable macros, project configuration, style guide, and an unrelated completed
pattern. Profile duplicates, null keys, match rates, unmatched populations, and
control totals.

## Output invariants

Inputs, joins, keys, cardinalities, filters, grouping, formulas, and ordered outputs
match approval. Output grain is enforced without accidental fanout or silent loss.
Properties and tests describe the post-transformation result.

## Workflow

1. Profile inputs and establish cardinality and retention.
2. Implement import, bounded transformation, and explicit `final` CTEs.
3. Preview grain, retention, nulls, match rates, and arithmetic.
4. Execute ephemeral SQL through an approved materialized downstream node.
5. Hand off cardinality, fanout, retention, and control evidence.

## Prompt-back conditions

Stop for unsupported joins, ambiguous deduplication, unexpected many-to-many behavior,
unmatched rows affecting retention, unclear formulas, or spec conflict.

## Validation and completion evidence

Require successful downstream execution, passing tests, and warehouse evidence for
grain uniqueness, join cardinality, retention, fanout, nulls, and approved arithmetic.

## Behavioral acceptance

If joining payment attempts to orders duplicates order-grain rows, retain payment grain
or aggregate using an approved rule before returning to order grain. Stop when the
requested output grain or aggregation policy is not approved.

## Ownership and maintenance

Analytics engineering owns intermediate behavior; data-product owners decide formulas
and retention. Review after fanout defects or changed source cardinality.

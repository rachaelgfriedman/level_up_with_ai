# Author governed semantic definitions — trainee scaffold

Use this skill when adding or materially changing a semantic model, entity, dimension,
measure, or metric used by analytics consumers.

## Trigger and goal

Publish one human-approved semantic definition grounded in a trusted contracted mart,
with decisions and validation evidence recorded.

## Non-goals

- Do not create a metric merely because a numeric column exists.
- Do not define a competing version of a governed number.
- Do not use semantic YAML to settle unresolved policy.
- Do not build the underlying staging or mart transformations.

## Required context and evidence

Inspect policy, routing, the approved decision artifact, existing metrics/semantic
models, the contracted source mart and grain, intended consumers, and the accountable
owner.

`TODO(training): Define complete source-column, entity, dimension, time, consumer, and installed semantic-spec evidence.`

## Workflow

1. Search existing governed definitions for reuse or conflict.
2. Ground the question in one trusted public mart and state its grain.
3. Approve aggregation/formula, filters, time behavior, null handling, joins, and
   consumer impact before YAML.
4. Implement the smallest compatible change in the existing format.
5. Validate and record representative governed results.

`TODO(training): Expand this workflow with project-specific semantic validation and evidence recording.`

## Prompt-back conditions

Stop when the question, owner, source mart, grain, aggregation, filters, null policy,
time semantics, interface impact, or competing definition is unresolved. For brew
examples, require approval for a quality-failure rate denominator and for whether null
brew durations are excluded from duration averages.

## Validation and completion evidence

A technically valid YAML file is insufficient. Require parse, Semantic Layer
validation, the underlying mart build, representative semantic queries, owner approval,
and recorded review evidence.

## References

Use `references/metric-definition-checklist.md`.

## Ownership and maintenance

Analytics engineering and the metric/data-product owner share ownership. Review after
a metric incident, definition conflict, consumer migration, or semantic-spec change.

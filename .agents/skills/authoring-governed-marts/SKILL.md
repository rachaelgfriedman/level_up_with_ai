# Author contracted canonical marts

Use this skill when creating or materially changing a public dbt dimension or fact consumed by analytics, BI, the Semantic Layer, or AI-assisted analysis.

## Trigger and goal

Publish the simplest approved public projection at a declared grain with an enforced contract, complete documentation, evidence-backed tests, and assessed consumer impact.

## Non-goals

- Do not move complex joins, fanout control, or unapproved business logic into the mart.
- Do not add public columns, metrics, semantic objects, types, or breaking behavior outside the approved spec.
- Do not use facilitator-only, generated, or vendored code as implementation input.

## Required context and evidence

Read the approved build spec, the simplest approved upstream model, current mart contracts and semantic assets, downstream lineage, actual upstream output, `dbt_project.yml`, the style guide, and one unrelated canonical mart pattern.

## Output invariants

- The mart has one declared public grain and key.
- SQL publishes only approved columns in exact order with explicit casts matching every contract data type.
- The contract is enforced and properties enumerate every public column.
- Keys, relationships, categoricals, and required measures have approved tests.
- Semantic scope and downstream compatibility remain explicit.

## Workflow

1. Confirm the public interface, grain, key, consumers, semantic scope, and breaking-change posture from approved authority.
2. Implement a simple upstream projection with explicit contract-aligned casts and a `final` CTE.
3. Add exact descriptions, data types, contract configuration, and approved tests.
4. Run `dbt parse`, the orchestrator's bounded build, contracts/tests, and warehouse acceptance checks.
5. Assess downstream lineage and hand off interface, test, contract, and consumer-impact evidence.

## Prompt-back conditions

Stop for an unapproved public column, type, grain, derivation, key, relationship, semantic change, or consumer migration. State evidence, options, recommendation, accountable owner, and narrow approval question.

## Validation and completion evidence

Completion requires a successful scoped build, enforced contract, passing tests, exact SQL/YAML column alignment, warehouse proof of grain and required-field behavior, and documented downstream/semantic impact.

## Behavioral acceptance

If an upstream numeric expression does not match the approved `number(38, 2)` public type, cast it explicitly and validate precision. Stop if rounding or unit conversion semantics are not approved; do not change the contract to fit accidental output.

## Ownership and maintenance

Analytics engineering owns mart implementation; data-product and metric owners approve public meaning and breaking changes. Review after contract incidents, consumer regressions, or changed semantic requirements.

# Demo 7 — You built the guardrails; now watch them work!

## Summary

Validate the approved two-model spec, then invoke the build orchestrator in a fresh
Wizard conversation. The same spec carries intent, exact implementation contract, and
verification evidence.

## Prerequisites and readiness gate

- Root `AGENTS.md` discovery TODOs are resolved.
- `authoring-staging-models` and the ready mart skill are active.
- `stg_alembic_ops__brew_events` does not exist in its real staging folder.
- `fct_brews` does not exist in its real mart folder.
- The spec is approved and verification is `not_run`.

## Part 1 — Reconfirm the plan

1. Run `docs/prompts/wizard_plan_prompt.md`.
2. Confirm source columns, transformations, nullable durations, ten public columns,
   seven tests, deferred semantic scope, and `+fct_brews` coverage.
3. Confirm both target models remain absent.

## Part 2 — Build once

1. Open a fresh conversation and run `docs/prompts/wizard_build_prompt.md`.
2. Show the readiness gate before any edit.
3. Build staging, then the contracted fact directly from staging.
4. Run lint, one bounded build, warehouse checks, and verification updates.

## Expected commands

```text
dbt parse --no-partial-parse
dbt lint --select stg_alembic_ops__brew_events fct_brews --format human
dbt build --select +fct_brews
```

## Exit state

Two SQL models and two properties files exist, seven planned data tests and the fact
contract pass, acceptance checks pass, and `verification.ready_for_review` is true.

# Demo 6 — Harden the staging skill

## Summary

Small groups cross-review the staging skill from Demo 5 against realistic failure
scenarios. This exercise improves one skill instead of creating unused layer skills.

## Scenarios

1. `quality_check` contains an unexpected normalized value.
2. A timestamp value cannot cast to `timestamp_ntz`.
3. A request proposes replacing null durations with zero.
4. Source/output counts differ after an accidental filter.
5. A proposed join would move non-staging logic into the model.

## Review questions

- Does the skill stop on unsupported mappings and lossy casts?
- Does it distinguish discoverable facts from human decisions?
- Does it require transformed-domain tests and row-retention evidence?
- Does it preserve the approved ordered output?
- Does it hand the mart clean, stable inputs without adding business logic?

## Optional command

```text
dbt parse --no-partial-parse
```

Parsing checks the repository after skill edits; it does not prove Markdown quality.

## Exit state

The single trainee-authored staging skill is ready for orchestration. The ready mart
skill and two-model spec complete the execution prerequisites.

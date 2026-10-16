# Demo 2 — Now break it!

## Summary

Issue a deliberately underspecified request before project discovery and staging-skill
authoring. The goal is visible variation, hidden assumptions, and expensive review.

## Prompt

```text
Build a staging model and brew fact from the alembic_ops brew events source.
```

## Isolation

Run this attempt on a throwaway branch, or keep every generated file uncommitted. Save
the diff or conversation output for comparison, then restore the clean starting state
before Demo 3. Do not repair this attempt into the governed solution.

## Optional commands

If the attempt produced coherent canonical targets:

```text
dbt parse --no-partial-parse
dbt build --select +fct_brews
```

## Comparison questions

- Which columns, types, null rules, and tests did it assume?
- Did it normalize quality and preserve duration nulls?
- Did it add an unnecessary intermediate model or hidden business logic?
- Did the fact enforce the intended ten-column interface?
- What evidence did it inspect before writing code?

## Exit state

Trainees feel the cost of underspecified authorship and retain a bounded comparison
artifact without contaminating the governed branch.

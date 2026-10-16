# Demo 3 — Find the patterns

## Summary

Trainees inspect active project evidence and complete the three bounded discovery TODOs
in root `AGENTS.md`. The result is durable project context, not implementation logic.

## Relevant files

- `AGENTS.md`, `README.md`, `dbt_project.yml`, and `SECURITY.md`
- `.agents/ROUTING.md`
- `docs/merlinco/`
- representative SQL/YAML in each model layer
- `macros/`

## Guided questions

1. Which source systems, layers, and models already exist, and which two are missing?
2. Where may cleanup, joins, grain changes, and public contracts occur?
3. How do `source()`, `ref()`, import CTEs, transformations, and `final` appear?
4. Which tests protect keys, relationships, normalized values, and required fields?
5. Why are parse, build, lint, warehouse checks, and review separate evidence?

## Optional Wizard prompt

```text
Help us complete the three discovery TODOs in AGENTS.md from the active files named by
each TODO. Propose concise durable policy language. Do not edit models or add
Alembic-specific implementation decisions.
```

## Commands

```text
dbt ls --resource-type model
dbt parse --no-partial-parse
```

## Exit state

Root `AGENTS.md` contains durable project guidance grounded in active evidence.

# Demo 1 — Meet the project

## Summary

Orient trainees to the three source systems, nine raw tables, layered dbt project,
completed sales/customer/shop patterns, and the intentionally missing two-model Alembic
exercise.

## Relevant files

- `README.md`
- `dbt_project.yml`
- `models/staging/`, `models/intermediate/`, `models/marts/`
- source declarations under `models/staging/`
- `docs/merlinco/STYLE_GUIDE.md`, `ERD.md`, and `DATA_DICTIONARY.md`
- `docs/prompts/onboarding_prompt.md`

## Prompt and commands

Run the onboarding prompt, then:

```text
dbt ls --resource-type source
dbt ls --resource-type model
```

## Talking points

- Three source systems feed one layered analytics project.
- Alembic Ops exposes only shops and brew events.
- Staging cleans one source; intermediate owns grain changes; marts publish contracts.
- `stg_alembic_ops__brew_events` and `fct_brews` are intentionally absent.
- Wizard accelerates onboarding, while project evidence and humans remain authoritative.

## Exit state

Trainees can identify the nine raw tables, layer boundaries, two missing target models,
and files to inspect before modeling.

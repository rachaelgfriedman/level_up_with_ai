# Workshop demo plans

These plans align the hands-on workshop with the slide deck. They are facilitator
planning aids, not trainee implementation authority.

## Hands-on sequence

| Demo | File | Workshop beat |
|---:|---|---|
| 1 | `01_meet_the_project.md` | Tour the nine-source-table project and missing Alembic targets. |
| 2 | `02_now_break_it.md` | Run an underspecified two-model attempt for comparison. |
| 3 | `03_find_the_patterns.md` | Discover conventions and complete the three AGENTS TODOs. |
| 4 | `04_project_inheritance.md` | Inspect inherited governance and find one missing trainee skill. |
| 5 | `05_skill_building.md` | Build the staging authoring skill together. |
| 6 | `06_build_layering_skills.md` | Cross-review and harden the staging skill. |
| 7 | `07_watch_guardrails_work.md` | Confirm readiness, then build the two-model slice. |
| 8 | `08_how_to_review.md` | Review implementation and evidence against the spec. |

## Throughline

```text
meet the project
→ experience underspecified generation
→ discover durable patterns
→ inspect inherited governance
→ build one reusable staging skill
→ harden it against realistic failures
→ build once through the approved spec
→ review against the same intent and evidence
```

## Starting state

- three bounded TODOs in root `AGENTS.md`;
- an approved two-model spec with verification not run;
- both Alembic target models absent from their real folders;
- planning, orchestration, mart, review, and support skills ready;
- the staging authoring skill absent from the trainee overlay.

See `training_assets/trainee_starter_manifest.md` for the reset contract.

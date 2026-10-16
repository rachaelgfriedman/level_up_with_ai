# Demo 4 — Project inheritance

## Summary

Trace how policy, routing, planning, orchestration, skill authoring, and review compose.
The guided reveal is that the two-model build cannot start until one trainee-authored
staging skill exists and both canonical targets are absent.

## Relevant files

- `.agents/ROUTING.md`
- `.agents/skills/building-governed-skills/SKILL.md`
- `.agents/skills/planning-governed-source-to-mart/`
- `.agents/skills/building-governed-source-to-mart/`
- `.agents/skills/authoring-governed-marts/SKILL.md`
- `.agents/skills/reviewing-governed-dbt-changes/`
- `docs/merlinco/ALEMBIC_BUILD_SPEC.yml`

## Guided questions

- Which asset defines always-on policy, routing, requested outputs, and execution?
- What single artifact connects approval, implementation, verification, and review?
- Which capability is intentionally missing from the trainee overlay?
- Why is the mart skill ready while the staging skill is built live?
- What should happen if either target model already exists?
- Which decisions still belong to accountable humans?

## Exit state

Trainees identify `authoring-staging-models` as the one skill to create and understand
the target-absence readiness gate.

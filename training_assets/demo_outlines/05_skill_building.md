# Demo 5 — Skill building: staging together

## Summary

The group uses `building-governed-skills` to author one reusable
`authoring-staging-models` skill.

## Relevant files

- `docs/prompts/skill_building_prompt_template.md`
- `docs/prompts/build_staging_skill_prompt.md`
- `.agents/skills/building-governed-skills/SKILL.md`
- `AGENTS.md` and `docs/merlinco/STYLE_GUIDE.md`
- representative unrelated staging SQL/YAML and shared macros

## Decision canvas

- What triggers this skill and what remains out of scope?
- How does it preserve one-source grain and row retention?
- Which casts, trims, normalizations, and macros are allowed?
- Which operations belong outside staging?
- How are source columns, castability, nulls, and accepted values grounded?
- What build and warehouse evidence proves success?
- What contradiction must make Wizard stop?

## Validation

The skill must have a bounded trigger, non-goals, evidence, invariants, workflow,
prompt-backs, completion evidence, behavioral acceptance, route, and owner. Its brew
scenario should normalize quality, cast approved fields, and preserve null durations.

## Exit state

A usable `authoring-staging-models` skill exists.

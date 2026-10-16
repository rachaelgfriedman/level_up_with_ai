# 🧙‍♀️✨🌿 Merlin & Co. Apothecaries

Merlin & Co. Apothecaries is a wizard-themed dbt training project for **Governed &
Scalable AI-assisted Analytics with dbt**. It models a 15-shop potion retailer across
sales, customers and guilds, and brew and shop operations.

The project runs on Snowflake with **dbt v2 Stable**. Trainees use Wizard to plan,
build, validate, and review a deliberately unfinished Alembic Ops slice directly in
the project’s canonical layers.

**Start here:** [AGENTS.md](AGENTS.md), [SECURITY.md](SECURITY.md), and
[docs/merlinco/STYLE_GUIDE.md](docs/merlinco/STYLE_GUIDE.md).

## Current architecture

The starting DAG contains **20 models**:

| Layer | Materialization | Count | Responsibility |
|---|---:|---:|---|
| `models/staging/` | view | 8 | Source-facing cleanup at the raw-table grain |
| `models/intermediate/` | ephemeral | 5 | Joins, deduplication, enrichment, fanout control, and grain changes |
| `models/marts/` | table | 7 | Contracted dimensions and facts for governed consumption |

The Alembic exercise adds two canonical models directly in those real folders:

1. `models/staging/alembic_ops/stg_alembic_ops__brew_events.sql`
2. `models/marts/fct_brews.sql`

Neither model exists in the trainee starting state. The approved design lives in
[docs/merlinco/ALEMBIC_BUILD_SPEC.yml](docs/merlinco/ALEMBIC_BUILD_SPEC.yml).

## Repository map

```text
.
├── AGENTS.md                         # governed workflow and decision boundaries
├── SECURITY.md                       # data handling and action policy
├── dbt_project.yml                   # paths, materializations, schemas, seeds, and vars
├── .agents/
│   ├── ROUTING.md                    # route work to the smallest applicable skill
│   └── skills/                       # planning, implementation, review, and support skills
├── models/
│   ├── staging/                      # source declarations and staging views
│   ├── intermediate/                 # ephemeral transformations
│   └── marts/                        # contracted marts and semantic definitions
├── macros/                           # shared cleanup and currency macros
├── seeds/medium_data/                # portable raw fixtures for environment setup
├── docs/merlinco/                    # ERD, dictionary, style guide, and build spec
└── docs/prompts/                     # workshop prompts for Wizard
```

## Source systems

The project declares **9 raw tables** across three fictional systems:

| Source | Domain | Raw tables |
|---|---|---|
| **Abracadabra POS** | Potions, orders, line items, and payments | `raw_potions`, `raw_orders`, `raw_order_items`, `raw_payments` |
| **Grimoire CRM** | Wizards, guilds, and memberships | `raw_customers`, `raw_guilds`, `raw_guild_memberships` |
| **Alembic Ops** | Shops and brewing | `raw_shops`, `raw_brew_events` |

Workshop raw relations are pre-built in Snowflake, so trainees query them through
`source()`. The committed seeds are portable facilitator fixtures.

## Existing data products

| Layer | Models |
|---|---|
| Staging | `stg_abra_pos__*`, `stg_grimoire_crm__*`, and `stg_alembic_ops__shops` |
| Intermediate | `int_customers_with_current_membership`, `int_memberships_current`, `int_order_items_with_order_context`, `int_orders_with_payments`, `int_payments_with_order_context` |
| Dimensions | `dim_dates`, `dim_potions`, `dim_shops`, `dim_wizards` |
| Facts | `fct_order_items`, `fct_orders`, `fct_payments` |

The existing Semantic Layer files are intentionally unchanged for the Day 2 exercise.

## Workshop workflow

1. **Explore and plan** the two-model slice in one project-owned build spec.
2. **Approve** source grain, transformations, nullable brew durations, public columns,
   tests, contract behavior, and deferred semantic scope.
3. **Author one reusable skill:** `authoring-staging-models`.
4. **Implement** the staging model and contracted fact in dependency order.
5. **Verify** with `dbt build --select +fct_brews`, lint, contracts, tests, lineage,
   and warehouse-backed acceptance checks.
6. **Review** implementation and evidence against the same approved spec.

Use these prompts:

- [Planning prompt](docs/prompts/wizard_plan_prompt.md)
- [Build prompt](docs/prompts/wizard_build_prompt.md)
- [Developer onboarding prompt](docs/prompts/onboarding_prompt.md)

## Development and validation

```text
dbt deps
dbt parse --no-partial-parse
dbt build --select +fct_brews
```

SQL style is defined in `.sqlfluff`. Run lint against the two real model paths or
through the supported Studio/CI lint workflow.

## Built-in analytical storylines

- **Growth:** order volume roughly doubles across the two-year window.
- **Seasonality:** potion categories have distinct seasonal patterns.
- **Regional spread:** wizard populations and revenue differ across five regions.
- **Customer concentration:** a small group of archmages drives outsized revenue.
- **Home-region loyalty:** most orders occur in a wizard’s home region.
- **Brew quality:** brew events support quality-failure and duration analysis.

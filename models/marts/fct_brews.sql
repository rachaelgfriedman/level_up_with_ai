with brews as (
    select * from {{ ref('int_brews_with_supply_cost') }}
),

final as (
    select
        brew_id::varchar as brew_id,
        potion_sku::varchar as potion_sku,
        shop_id::varchar as shop_id,
        cauldron_id::varchar as cauldron_id,
        brewer_name::varchar as brewer_name,
        quality_check::varchar as quality_check,
        batch_size::integer as batch_size,
        brew_duration_minutes::integer as brew_duration_minutes,
        supply_cost_per_potion_copper::integer as supply_cost_per_potion_copper,
        supply_cost_per_potion_gold::number(38, 2) as supply_cost_per_potion_gold,
        batch_supply_cost_copper::integer as batch_supply_cost_copper,
        batch_supply_cost_gold::number(38, 2) as batch_supply_cost_gold,
        brewed_at::timestamp_ntz as brewed_at,
        brewed_date::date as brewed_date
    from brews
)

select * from final

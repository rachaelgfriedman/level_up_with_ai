with potion_ingredients as (
    select * from {{ ref('stg_alembic_ops__potion_ingredients') }}
),

ingredients as (
    select * from {{ ref('stg_alembic_ops__ingredients') }}
),

joined as (
    select
        potion_ingredients.potion_sku,
        potion_ingredients.quantity * ingredients.unit_cost_copper as ingredient_supply_cost_copper
    from potion_ingredients
    inner join ingredients
        on potion_ingredients.ingredient_id = ingredients.ingredient_id
),

final as (
    select
        potion_sku,
        count(*)::integer as ingredient_count,
        sum(ingredient_supply_cost_copper)::integer as supply_cost_per_potion_copper,
        {{ copper_to_gold('sum(ingredient_supply_cost_copper)') }} as supply_cost_per_potion_gold
    from joined
    group by potion_sku
)

select * from final

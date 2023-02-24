
{% if target.name == "prod" %}

    -- pretend production version
    select 1 as id, 'orange' as color, true as is_real
    union all
    select 2 as id, 'blue' as color, true as is_real

{% else %}

    -- pretend development version with a small change
    select 1 as id, 'black' as color, true as is_real
    union all
    select 2 as id, 'blue' as color, false as is_real
    union all
    select 3 as id, 'green' as color, true as is_real

{% endif %}

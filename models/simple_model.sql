
{% if target.name == "prod" %}

    -- pretend production version
    select 1 as id, 'orange' as color
    union all
    select 2 as id, 'blue' as color

{% else %}

    -- pretend development version with a small change
    select 1 as id, 'black' as color
    union all
    select 2 as id, 'blue' as color

{% endif %}

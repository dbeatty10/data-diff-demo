select * from {{ ref('simple_model') }}

{% if target.name == "prod" %}

    where id = 2

{% else %}
  
    where id = 1

{% endif %}
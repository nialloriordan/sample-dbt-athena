{{ 
    config(
        materialized='table', 
        tags=['staging']
    ) 
}}

{% set column_names =  dbt_utils.star(from=source("dbt_athena_test", "list_management")) %}
{% set column_names_list = column_names.split(',') %}

SELECT
{% for n in range(5) -%}
    {{ column_names_list[n] }}
    {%- if not loop.last %},{% endif -%}
{%- endfor %}
FROM {{ source("dbt_athena_test", "list_management") }}
{{ 
    config(
        materialized='table', 
        tags=['staging']
    ) 
}}

SELECT
  {{ dbt_utils.star(from=source("dbt_athena_test", "list_management"), except=["col86"]) }}
  ,date(col86) as creation_date
FROM list_management
WHERE regexp_like(col86, '\d{4}-\d{2}-\d{2}')
{{ 
    config(
        materialized='incremental', 
        tags=['staging']
    ) 
}}

SELECT
    col1,
    col2,
    creation_date
FROM {{ ref("valid_list_management") }}

{% if is_incremental () %}

WHERE creation_date >= (
    SELECT max(creation_date) - interval '1' day 
    FROM {{ this }}
)

{% endif %}
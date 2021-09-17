{{ 
    config(
        materialized='table', 
        tags=['outputs']
    ) 
}}

SELECT
    COUNT(*) as count,
    creation_date
FROM {{ ref("sample_incremental_transformation") }}
GROUP BY creation_date
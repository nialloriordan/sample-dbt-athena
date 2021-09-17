create table
    dbt_athena_test.sample_report

    with (
        format='parquet'
    )
  as
    

SELECT
    COUNT(*) as count,
    creation_date
FROM dbt_athena_test.sample_incremental_transformation
GROUP BY creation_date

  
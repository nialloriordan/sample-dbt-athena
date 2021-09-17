
      create table
    dbt_athena_test.sample_incremental_transformation

    with (
        format='parquet'
    )
  as
    

SELECT
    col1,
    col2,
    creation_date
FROM dbt_athena_test.valid_list_management



  
create table
    dbt_athena_test.sample_transformation

    with (
        format='parquet'
    )
  as
    




SELECT
"col0",
  "col1",
  "col2",
  "col3",
  "col4"
FROM dbt_athena_test.list_management

  
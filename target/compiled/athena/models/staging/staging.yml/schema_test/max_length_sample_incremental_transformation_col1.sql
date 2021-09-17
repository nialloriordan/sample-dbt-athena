

    

    select *
    from dbt_athena_test.sample_incremental_transformation
    where length(col1) < 5


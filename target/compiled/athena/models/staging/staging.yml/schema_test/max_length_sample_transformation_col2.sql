

    

    select *
    from dbt_athena_test.sample_transformation
    where length(col2) < 5

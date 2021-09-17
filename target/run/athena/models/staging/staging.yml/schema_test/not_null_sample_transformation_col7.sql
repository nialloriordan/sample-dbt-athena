select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from dbt_athena_test_staging.sample_transformation
where col7 is null



      
    ) dbt_internal_test
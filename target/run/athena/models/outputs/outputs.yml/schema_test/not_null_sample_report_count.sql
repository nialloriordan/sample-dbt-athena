select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    

select *
from dbt_athena_test.sample_report
where count is null



      
    ) dbt_internal_test
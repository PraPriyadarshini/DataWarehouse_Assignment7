select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
    



select sessionId
from USER_DB_HORNET.analytics.session_summary
where sessionId is null



      
    ) dbt_internal_test
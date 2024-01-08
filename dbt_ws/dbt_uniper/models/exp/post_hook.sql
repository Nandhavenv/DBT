{{
    config(
        materialized='incremental'
    )
}}

select 
    101 as emp_num,
    CURRENT_TIMESTAMP(2) as time 
from dual
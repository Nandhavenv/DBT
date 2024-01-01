{{
    config(
        materialized='incremental',
        pre_hook="delete from jim.uniper_exp.pre_hook;"
    )
}}

select 
    101 as emp_num,
    CURRENT_TIMESTAMP(2) as time 
from dual
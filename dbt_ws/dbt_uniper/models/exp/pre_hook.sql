{{
    config(
        materialized="incremental", pre_hook="delete from jim.uniper_exp.pre_hook;"
    )
}}

select 101 as emp_num, current_timestamp(2) as time
from dual

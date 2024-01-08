{{ config(materialized="incremental") }}

select 101 as emp_num, current_timestamp(2) as time
from dual

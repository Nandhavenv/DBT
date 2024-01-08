with src as (
    select * from {{ref("dbt_columns")}}
)
select * from src
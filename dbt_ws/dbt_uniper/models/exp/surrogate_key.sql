-- orders_dim_model.sql
{{ config(materialized="table") }}

with
    source_data as (
        select
            'LAYS1001' as order_id,
            'NAN1918' as customer_id,
            '12-JAN-2024' as order_date,
            'LAYSINGREEN' as product_id
        from dual
    )

select
    {{ dbt_utils.generate_surrogate_key(["order_id", "customer_id", "order_date"]) }}
    as order_dim_key,
    order_id,
    customer_id,
    order_date,
    product_id
from source_data

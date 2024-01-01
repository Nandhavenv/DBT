-- orders_dim_model.sql

{{ config(materialized='table') }}

WITH source_data AS (
    SELECT
        'LAYS1001' AS order_id,
        'NAN1918' AS customer_id,
        '12-JAN-2024' AS order_date,
        'LAYSINGREEN' AS product_id
    FROM dual
)

SELECT
    {{ dbt_utils.generate_surrogate_key(['order_id', 'customer_id', 'order_date']) }} AS order_dim_key,
    order_id,
    customer_id,
    order_date,
    product_id
FROM source_data

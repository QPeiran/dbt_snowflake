{{ config(materialized='view') }}

with source_store_sales as (
    select * from {{source("snowflake_sample_data_ref", "store_sales")}}
),

final as (
    select * from source_store_sales
)

select * from final
with snow_source as (
    select SS_SALES_PRICE as sale_price
    from {{source('snowflake_sample_data_ref', 'store_sales')}}
    where sale_price <= 0
)

select * from snow_source
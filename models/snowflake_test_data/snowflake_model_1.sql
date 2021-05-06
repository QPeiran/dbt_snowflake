with snow_source as (
    select SS_SALES_PRICE as sale_price
    from {{source('snowflake_sample_data_ref', 'store_sales')}}
)

select * from snow_source
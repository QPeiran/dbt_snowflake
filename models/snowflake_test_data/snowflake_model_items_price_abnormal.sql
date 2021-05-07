with abnormal_general as (
    select SS_SALES_PRICE as sale_price, SS_ITEM_SK as item_sk
    from {{source('snowflake_sample_data_ref', 'store_sales')}}
    where sale_price <= 0
)

select * from abnormal_general
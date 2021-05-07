with abnormal_details as (
    select * from {{ref('snowflake_model_items_price_abnormal')}} a
    left join {{source('snowflake_sample_data_ref', 'store_sales')}} b
    on a.item_sk = b.SS_ITEM_SK
)

select * from abnormal_details
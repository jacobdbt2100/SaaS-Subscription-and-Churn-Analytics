{{ config(materialized='table') }}

select
    "Order ID" as order_id,
    "Article" as article,
    "Source Location" as warehouse,
    "Target Location" as customer,
    "Via" as transport_mode,
    "Shipping Date" as shipped_date,
    "Planned Delivery Date" as planned_delivery_date,
    "Actual Delivery Date" as actual_delivery_date,
    "Planned Qty" as planned_qty,
    "Weight (Ton)" as weight_ton,
    "Actual Delivered" as actual_qty_delivered,
    "Status" as status,
    "Cost" as cost
from {{ source('goods_delivery_data', 'goods_delivery') }}

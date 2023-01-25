
  create or replace  view jaffle_shop.bruno.stg_orders
  
   as (
    with source as (
    select * from jaffle_shop.bruno.raw_orders

),

renamed as (

    select
        id as order_id,
        user_id as customer_id,
        order_date,
        status

    from source

)

select * from renamed
  );

select * from bazar.bazar_csv;

SELECT COUNT(order_number) AS total_orders FROM bazar.bazar_csv;

select sum(amount_per_unit*ordered_quantity) as total_revenue from bazar.bazar_csv
where order_status='CLOSED';

select avg(ordered_quantity) as avg_order_quantity from bazar.bazar_csv
where order_status='CLOSED';

select order_warehouse_id,store_id,count(order_number) as order_counts from bazar.bazar_csv
group by order_warehouse_id,store_id;

select item_id,sum(ordered_quantity) as tot_quant_sold from bazar.bazar_csv
group by item_id
order by tot_quant_sold desc
limit 6;


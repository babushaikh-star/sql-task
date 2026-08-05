select c.customer_name,
o.order_date,
o.order_status
from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id
where o.order_date <= '2026-07-07';

select count(customer_id ) from tbl_orders as o
where order_date>'2026-07-07';

select sum(od.product_quantity)
from tbl_order_details as od
join tbl_orders as o
on o.order_id=od.order_id
where o.order_date='2026-07-08';


select count(od.product_id)
from tbl_order_details as od
join tbl_product as p
on od.product_id =p.product_id 
where p.product_name = ' ';
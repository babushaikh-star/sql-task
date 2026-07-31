SELECT * FROM tbl_customer as c,
tbl_orders as o
where c.customer_id = o.customer_id 
AND o.order_status='Shipped';

select * from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id;


select * from tbl_customer as c 
join tbl_orders as o 
on c.customer_id =o.customer_id 
where o.order_status='Delivered';





select * from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id
where  o.order_time in('10:15:00');

select o.order_id,c.customer_name,o.order_date,o.order_status
from tbl_customer as c
join tbl_orders as o
on c.customer_id =o.customer_id 
order by order_id asc;

select c.customer_name ,
o.order_date,
o.order_status
from tbl_customer as c 
join tbl_orders as o
ON c.customer_id=o.customer_id
WHERE o.order_date>'2026-07-04'
AND o.order_status IN('Delivered','Shipped');

select c.customer_name ,
o.order_date,
o.order_status
from tbl_customer as c
join tbl_orders as o
ON c.customer_id=o.customer_id
WHERE c.customer_name LIKE "A%";
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


select o.order_id,p.product_name,od.product_quantity
from tbl_orders as o
join tbl_order_details as od
on o.order_id=od.order_id
join tbl_product as p 
on od.product_id=p.product_id
order by o.order_id asc;

select customer_name,product_name,
order_date
from tbl_orders as o
join tbl_customer as c
on o.customer_id=c.customer_id 
join tbl_order_details as od 
on order_id =od.order_id 
join tbl_product as p 
on p.product_id = od.product_id;





select o.order_d,p.product_name,od.product_stock
from tbl_orders as o
join tbl_order_details as od
on o.order_id=od.order_id
join tbl_product as p
on od.product_id=p.product_id
order by o.order_id asc;


select o.order_id ,p.product_name,
p.product_stock,
od.product_quantity
from tbl_orders as o
join tbl_order_details as od
on o.order_id =od.order_id
join tbl_product as p
on od.product_id =p.product_id 
order by o.order_id asc;


select customer_name ,product_name ,order_date 
from tbl_orders as o
join tbl_customer as c
on o. customer_id =c.customer_id
join tbl_order_details as od 
on o.order_id =od.order_id
join tbl_product as p
on p.product_id=od.product_id;

select customer_name,customer_email,order_status,product_quantity,product_stock
from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id
join tbl_order_details as od
on od.order_id=c.customer_id
join tbl_product as p
on p.product_id=od.product_id
order by c.customer_id desc;
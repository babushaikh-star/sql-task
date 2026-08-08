
-- give all order detail which order is delivered
SELECT c.customer_name,o.order_id,o.order_time,order_status,o.order_date from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id
where order_status='Delivered';

-- show the customer name who purchase Laptop or Monitor
SELECT c.customer_name, p.product_name
FROM tbl_customer AS c
JOIN tbl_orders AS o
ON c.customer_id = o.customer_id
JOIN tbl_order_details AS od
ON od.order_id = o.order_id
JOIN tbl_product AS p
ON p.product_id = od.product_id
WHERE p.product_name = 'Laptop'
   OR p.product_name = 'Monitor';

-- show the customer name and product_name where amount is greater  than 10000
SELECT c.customer_name , p.product_name ,od.product_amount as AMOUNT from tbl_order_details as od
join tbl_product as p
on p.product_id=od.product_id
join tbl_orders as o
on o.order_id=od.order_id
join tbl_customer as c
on c.customer_id=o.customer_id
where product_amount>10000;

-- Display which customer ordered each product.
SELECT c.customer_name,p.product_name,od.product_quantity from tbl_product as p
join tbl_order_details as od
on od.product_id=p.product_id
join tbl_orders as o
on od.order_id=o.order_id
join tbl_customer as c
on o.customer_id=c.customer_id; 

-- Display the orders where the Product Quantity is 2 or more
SELECT o.order_id,od.product_quantity,o.order_status from tbl_order_details as od
join tbl_orders as o
on o.order_id=od.order_id
where od.product_quantity>=2;
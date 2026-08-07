SELECT c.customer_name ,o.order_id from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id;

SELECT c.customer_name ,o.order_date,order_status from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id;

SELECT od.order_id,p.product_name from tbl_order_details as od
join tbl_product as p
on od.product_id=p.product_id;

SELECT od.product_quantity,p.product_name from tbl_order_details as od
join tbl_product as p
on od.product_id=p.product_id;

SELECT c.customer_name , p.product_name from tbl_product as p
join tbl_order_details as od
on od.product_id=p.product_id
join tbl_orders as o
on o.order_id=od.order_id
join tbl_customer as c
on o.customer_id=c.customer_id;

SELECT c.customer_name as CUSTOMER , p.product_name as PRODUCT ,od.product_quantity PRODUCT_QUANTITY from tbl_product as p
join tbl_order_details as od
on od.product_id=p.product_id
join tbl_orders as o
on o.order_id=od.order_id
join tbl_customer as c
on o.customer_id=c.customer_id; 

-- Har customer ne kitni quantity order ki hai, dikhaiye
SELECT c.customer_name as CUSTOMER ,od.product_quantity as QUANTITY 
from tbl_order_details as od
join tbl_orders as o
on od.order_id=o.order_id
join tbl_customer as c
on o.customer_id=c.customer_id
where od.product_quantity>2;

-- show the total amount of order
SELECT od.order_id,count(order_id),product_amount as AMOUNT 
from tbl_order_details as od
GROUP BY od.order_id,od.product_amount
limit 5;


-- show the orders more than Rs.5000.
SELECT o.order_id AS ID,od.product_amount as AMOUNT
from tbl_order_details as od
join tbl_orders as o
on o.order_id=od.order_id
where od.product_amount>5000
group by o.order_id,od.product_amount;

-- show the name of customer who purchase a laptop
SELECT c.customer_name as NAME ,p.product_name AS PRODUCT_NAME 
from tbl_customer as c
join tbl_orders as o
on  o.customer_id=c.customer_id
join tbl_order_details as od
on o.order_id=od.order_id
join tbl_product as p
on od.product_id=p.product_id
where product_name='Laptop'
group by c.customer_name,p.product_name;


-- show the product name who cancelled
SELECT p.product_name AS PRODUCT_NAME , o.order_status as ORDER_STATUS
from tbl_orders as o
join tbl_order_details as od
on o.order_id=od.order_id
join tbl_product as p
on od.product_id=p.product_id
where o.order_status='Cancelled';

SELECT p.product_name ,od.product_quantity,o.order_status
from tbl_order_details as od
join tbl_orders as o
on o.order_id=od.order_id
join tbl_product as p
on od.product_id=p.product_id
where order_status='Delivered';

SELECT c.customer_name,o.order_status,o.order_date
from tbl_customer as c
join tbl_orders as o
on c.customer_id=o.customer_id
where  o.order_date >'2027-07-02'
or o.order_status='Pending';



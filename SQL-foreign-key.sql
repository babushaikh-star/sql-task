 use SHOP;
 CREATE TABLE tbl_customer(
 customer_id int primary key auto_increment ,
 customer_name varchar(20),
 customer_email varchar(20),
 customer_mobile varchar(30)
 );
 
 CREATE TABLE tbl_orders(order_id int primary key auto_increment ,
 order_date date,
 order_time time,
 order_status varchar(30),
 customer_id int,
 foreign key(customer_id) references tbl_customer(customer_id));
 
 CREATE TABLE tbl_product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(50),
    product_price DECIMAL(10,2),
    product_stock INT
);
CREATE TABLE tbl_order_details (
    detail_id INT PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    product_quantity INT,
    product_amount INT,
    order_id INT,
    FOREIGN KEY (product_id) REFERENCES tbl_product (product_id),
    FOREIGN KEY (order_id) REFERENCES tbl_orders(order_id)
);


USE SHOP;

-- ==========================
-- Insert into tbl_customer
-- ==========================
INSERT INTO tbl_customer (customer_name, customer_email, customer_mobile) VALUES
('Rahul', 'rahul@gmail.com', '9876543210'),
('Priya', 'priya@gmail.com', '9876543211'),
('Amit', 'amit@gmail.com', '9876543212'),
('Sneha', 'sneha@gmail.com', '9876543213'),
('Rohan', 'rohan@gmail.com', '9876543214'),
('Pooja', 'pooja@gmail.com', '9876543215'),
('Karan', 'karan@gmail.com', '9876543216'),
('Neha', 'neha@gmail.com', '9876543217'),
('Vikas', 'vikas@gmail.com', '9876543218'),
('Anjali', 'anjali@gmail.com', '9876543219');

-- ==========================
-- Insert into tbl_product
-- ==========================
INSERT INTO tbl_product (product_name, product_price, product_stock) VALUES
('Laptop', 55000.00, 20),
('Mouse', 500.00, 100),
('Keyboard', 1200.00, 50),
('Monitor', 15000.00, 25),
('Printer', 8500.00, 15),
('Headphones', 2000.00, 40),
('USB Drive', 800.00, 60),
('Webcam', 2500.00, 30),
('Speaker', 3500.00, 18),
('Power Bank', 1800.00, 45);

-- ==========================
-- Insert into tbl_orders
-- ==========================
INSERT INTO tbl_orders (order_date, order_time, order_status, customer_id) VALUES
('2026-07-01','10:15:00','Delivered',1),
('2026-07-02','11:30:00','Pending',2),
('2026-07-03','12:00:00','Shipped',3),
('2026-07-04','01:15:00','Delivered',4),
('2026-07-05','02:20:00','Cancelled',5),
('2026-07-06','03:30:00','Pending',6),
('2026-07-07','04:00:00','Delivered',7),
('2026-07-08','05:10:00','Shipped',8),
('2026-07-09','06:25:00','Pending',9),
('2026-07-10','07:45:00','Delivered',10);

-- ==========================
-- Insert into tbl_order_details
-- ==========================
INSERT INTO tbl_order_details (product_id, product_quantity, product_amount, order_id) VALUES
(1,1,55000,1),
(2,2,1000,2),
(3,1,1200,3),
(4,1,15000,4),
(5,2,17000,5),
(6,3,6000,6),
(7,5,4000,7),
(8,2,5000,8),
(9,1,3500,9),
(10,2,3600,10);

SELECT * FROM tbl_customer,tbl_product;
SELECT * FROM tbl_product;
SELECT * FROM tbl_orders;
SELECT * FROM tbl_order_details;
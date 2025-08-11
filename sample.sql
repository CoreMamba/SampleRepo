-- SHOW DATABASES;
-- USE mysql;
-- USE sampledb;
-- Create Table if not EXISTS customers (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(50) NOT NULL,
--     last_name VARCHAR(50) NOT NULL,
--     email VARCHAR(100) NOT NULL UNIQUE,
--     phone VARCHAR(15),
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
-- );

-- DESCRIBE customers;
-- SELECT * FROM sampledb.customers;
-- SHOW TABLES FROM sampledb;
-- SHOW TABLES;

 -- USE sampledb;
-- Insert INTO customers (first_name, last_name, email, phone) VALUES
-- -- ('John', 'Doe', 'john.doe@example.com', '123-456-7890'),
-- -- ('sdfasf', 'Smith', 'jane.smith@example.com', '987-654-3210'),
-- ('sdfsdf', 'Doe', 'jsrretere@example.com', '123-456-7890'),
-- ('yyyy', 'Smith', 'srtrtertemith@example.com', '987-654-3210'); 
--  

--  SELECT * FROM sampledb.customers;

-- DESCRIBE customers;
-- SELECT  * FROM sampledb.customers;
-- USE sampledb;
-- CREATE TABLE sampledb.Customers (
--     customer_id INT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     gender CHAR(1),
--     city VARCHAR(50),
--     signup_date DATE
-- );

-- INSERT INTO Customers VALUES
-- (1, 'Alice', 'Smith', 'F', 'Mumbai', '2024-01-10'),
-- (2, 'Bob', 'Jones', 'M', 'Delhi', '2024-02-15'),
-- (3, 'Charlie', 'Brown', 'M', 'Mumbai', '2024-01-18'),
-- (4, 'Daisy', 'Khan', 'F', 'Chennai', '2024-03-10');

-- CREATE TABLE Products (
--     product_id INT PRIMARY KEY,
--     product_name VARCHAR(100),
--     category VARCHAR(50),
--     price DECIMAL(10,2)
-- );

-- INSERT INTO Products VALUES
-- (101, 'Laptop', 'Electronics', 65000.00),
-- (102, 'Smartphone', 'Electronics', 30000.00),
-- (103, 'Shoes', 'Apparel', 2500.00),
-- (104, 'Book', 'Stationery', 500.00);

-- CREATE TABLE Orders (
--     order_id INT PRIMARY KEY,
--     customer_id INT,
--     order_date DATE,
--     total_amount DECIMAL(10,2),
--     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
-- );

-- INSERT INTO Orders VALUES
-- (1001, 1, '2024-06-01', 95000.00),
-- (1002, 2, '2024-06-03', 30500.00),
-- (1003, 1, '2024-06-10', 500.00),
-- (1004, 3, '2024-06-15', 2500.00);


-- Create DATABASE IF NOT EXISTS finalsampledb;
-- USE finalsampledb;
-- CREATE TABLE OrderDetails (
--     detail_id INT PRIMARY KEY,
--     order_id INT,
--     product_id INT,
--     quantity INT,
--     price_each DECIMAL(10,2),
--     FOREIGN KEY (order_id) REFERENCES sampledb.Orders(order_id),
--     FOREIGN KEY (product_id) REFERENCES sampledb.Products(product_id)
-- );

-- INSERT INTO OrderDetails VALUES
-- (1, 1001, 101, 1, 65000.00),
-- (2, 1001, 102, 1, 30000.00),
-- (3, 1002, 102, 1, 30000.00),
-- (4, 1003, 104, 1, 500.00),
-- (5, 1004, 103, 1, 2500.00);

-- CREATE TABLE finalsampledb.Returns (
--     return_id INT PRIMARY KEY,
--     order_id INT,
--     product_id INT,
--     return_date DATE,
--     reason VARCHAR(100),
--     FOREIGN KEY (order_id) REFERENCES sampledb.Orders(order_id),
--     FOREIGN KEY (product_id) REFERENCES sampledb.Products(product_id)
-- );

-- INSERT INTO Returns VALUES
-- (1, 1002, 102, '2024-06-05', 'Defective item');

-- SHOW databases;

/* INSERT INTO sampledb.Customers VALUES
(51, 'Sarah', 'Miller', 'F', 'Hyderabad', '2025-01-05'),
(52, 'David', 'Davis', 'M', 'Bangalore', '2025-01-12'),
(53, 'Olivia', 'Garcia', 'F', 'Chennai', '2025-01-20'),
(54, 'James', 'Rodriguez', 'M', 'Pune', '2025-01-25'),
(55, 'Sophia', 'Martinez', 'F', 'Kolkata', '2025-02-01'),
(56, 'William', 'Hernandez', 'M', 'Delhi', '2025-02-08'),
(57, 'Isabella', 'Lopez', 'F', 'Mumbai', '2025-02-15'),
(58, 'Daniel', 'Gonzalez', 'M', 'Hyderabad', '2025-02-20'),
(59, 'Mia', 'Wilson', 'F', 'Bangalore', '2025-03-01'),
(60, 'Alexander', 'Anderson', 'M', 'Chennai', '2025-03-07'),
(61, 'Emily', 'Thomas', 'F', 'Pune', '2025-03-15'),
(62, 'Michael', 'Jackson', 'M', 'Kolkata', '2025-03-22'),
(63, 'Charlotte', 'White', 'F', 'Delhi', '2025-03-28'),
(64, 'Ethan', 'Harris', 'M', 'Mumbai', '2025-04-05'),
(65, 'Amelia', 'Clark', 'F', 'Hyderabad', '2025-04-10'),
(66, 'Jacob', 'Lewis', 'M', 'Bangalore', '2025-04-18'),
(67, 'Harper', 'Robinson', 'F', 'Chennai', '2025-04-25'),
(68, 'Noah', 'Walker', 'M', 'Pune', '2025-05-01'),
(69, 'Evelyn', 'Young', 'F', 'Kolkata', '2025-05-08'),
(70, 'Liam', 'Hall', 'M', 'Delhi', '2025-05-15'),
(71, 'Abigail', 'Allen', 'F', 'Mumbai', '2025-05-20'),
(72, 'Benjamin', 'Wright', 'M', 'Hyderabad', '2025-05-28'),
(73, 'Ella', 'King', 'F', 'Bangalore', '2025-06-05'),
(74, 'Lucas', 'Scott', 'M', 'Chennai', '2025-06-12'),
(75, 'Scarlett', 'Green', 'F', 'Pune', '2025-06-18'),
(76, 'Mason', 'Baker', 'M', 'Kolkata', '2025-06-25'),
(77, 'Chloe', 'Adams', 'F', 'Delhi', '2025-07-01'),
(78, 'Logan', 'Nelson', 'M', 'Mumbai', '2025-07-08'),
(79, 'Grace', 'Carter', 'F', 'Hyderabad', '2025-07-15'),
(80, 'Jackson', 'Mitchell', 'M', 'Bangalore', '2025-07-22'),
(81, 'Lily', 'Perez', 'F', 'Chennai', '2025-07-28'),
(82, 'Caleb', 'Roberts', 'M', 'Pune', '2025-08-05'),
(83, 'Avery', 'Turner', 'F', 'Kolkata', '2025-08-12'),
(84, 'Samuel', 'Phillips', 'M', 'Delhi', '2025-08-19'),
(85, 'Zoey', 'Campbell', 'F', 'Mumbai', '2025-08-26');
 */
/* INSERT INTO sampledb.Products VALUES
(201, 'Gaming Keyboard', 'Electronics', 8000.00),
(202, 'Smart TV', 'Electronics', 45000.00),
(203, 'Running Jacket', 'Apparel', 3500.00),
(204, 'Mystery Novel', 'Books', 700.00),
(205, 'Ergonomic Mouse', 'Electronics', 1200.00),
(206, 'Air Purifier', 'Home Appliances', 9000.00),
(207, 'Winter Coat', 'Apparel', 6000.00),
(208, 'Self-Help Book', 'Books', 550.00),
(209, 'External Monitor', 'Electronics', 18000.00),
(210, 'Hand Mixer', 'Home Appliances', 2000.00),
(211, 'Sweatpants', 'Apparel', 1500.00),
(212, 'Art History Book', 'Books', 2000.00),
(213, 'Noise-Cancelling Headphones', 'Electronics', 10000.00),
(214, 'Robot Vacuum', 'Home Appliances', 25000.00),
(215, 'Winter Boots', 'Apparel', 4500.00),
(216, 'Desk Organizer', 'Stationery', 400.00),
(217, 'Graphics Tablet', 'Electronics', 12000.00),
(218, 'Dishwasher', 'Home Appliances', 35000.00),
(219, 'Formal Shirt', 'Apparel', 1800.00),
(220, 'Science Fiction Anthology', 'Books', 900.00),
(221, 'Portable Projector', 'Electronics', 22000.00),
(222, 'Espresso Machine', 'Home Appliances', 15000.00),
(223, 'Sportswear Set', 'Apparel', 2800.00),
(224, 'Calendar 2026', 'Stationery', 250.00),
(225, 'Smart Home Hub', 'Electronics', 7000.00),
(226, 'Air Conditioner Portable', 'Home Appliances', 28000.00),
(227, 'Backpack Urban', 'Accessories', 3000.00),
(228, 'Fitness Tracker', 'Electronics', 5000.00),
(229, 'Juicer', 'Home Appliances', 4000.00),
(230, 'Silk Scarf', 'Apparel', 1000.00),
(231, 'External CD/DVD Drive', 'Electronics', 2500.00),
(232, 'Smart Lock', 'Home & Security', 9000.00),
(233, 'Bluetooth Earbuds', 'Electronics', 3500.00),
(234, 'Electric Shaver', 'Personal Care', 2000.00),
(235, 'Gaming Mousepad', 'Electronics', 300.00);
 */
/* INSERT INTO sampledb.Orders VALUES
(1051, 51, '2025-01-15', 8000.00),
(1052, 52, '2025-01-20', 45000.00),
(1053, 53, '2025-01-28', 3500.00),
(1054, 54, '2025-02-03', 700.00),
(1055, 55, '2025-02-10', 1200.00),
(1056, 56, '2025-02-18', 9000.00),
(1057, 57, '2025-02-25', 6000.00),
(1058, 58, '2025-03-03', 550.00),
(1059, 59, '2025-03-10', 18000.00),
(1060, 60, '2025-03-17', 2000.00),
(1061, 61, '2025-03-24', 1500.00),
(1062, 62, '2025-04-01', 2000.00),
(1063, 63, '2025-04-08', 10000.00),
(1064, 64, '2025-04-15', 25000.00),
(1065, 65, '2025-04-22', 4500.00),
(1066, 66, '2025-04-29', 400.00),
(1067, 67, '2025-05-06', 12000.00),
(1068, 68, '2025-05-13', 35000.00),
(1069, 69, '2025-05-20', 1800.00),
(1070, 70, '2025-05-27', 900.00),
(1071, 71, '2025-06-03', 22000.00),
(1072, 72, '2025-06-10', 15000.00),
(1073, 73, '2025-06-17', 2800.00),
(1074, 74, '2025-06-24', 250.00),
(1075, 75, '2025-07-01', 7000.00),
(1076, 76, '2025-07-08', 28000.00),
(1077, 77, '2025-07-15', 3000.00),
(1078, 78, '2025-07-22', 5000.00),
(1079, 79, '2025-07-29', 4000.00),
(1080, 80, '2025-08-05', 1000.00),
(1081, 81, '2025-08-12', 2500.00),
(1082, 82, '2025-08-19', 9000.00),
(1083, 83, '2025-08-26', 3500.00),
(1084, 84, '2025-09-02', 2000.00),
(1085, 85, '2025-09-09', 300.00);
 */
/* INSERT INTO finalsampledb.OrderDetails VALUES
(101, 1051, 201, 1, 8000.00),
(102, 1052, 202, 1, 45000.00),
(103, 1053, 203, 1, 3500.00),
(104, 1054, 204, 1, 700.00),
(105, 1055, 205, 1, 1200.00),
(106, 1056, 206, 1, 9000.00),
(107, 1057, 207, 1, 6000.00),
(108, 1058, 208, 1, 550.00),
(109, 1059, 209, 1, 18000.00),
(110, 1060, 210, 1, 2000.00),
(111, 1061, 211, 1, 1500.00),
(112, 1062, 212, 1, 2000.00),
(113, 1063, 213, 1, 10000.00),
(114, 1064, 214, 1, 25000.00),
(115, 1065, 215, 1, 4500.00),
(116, 1066, 216, 1, 400.00),
(117, 1067, 217, 1, 12000.00),
(118, 1068, 218, 1, 35000.00),
(119, 1069, 219, 1, 1800.00),
(120, 1070, 220, 1, 900.00),
(121, 1071, 221, 1, 22000.00),
(122, 1072, 222, 1, 15000.00),
(123, 1073, 223, 1, 2800.00),
(124, 1074, 224, 1, 250.00),
(125, 1075, 225, 1, 7000.00),
(126, 1076, 226, 1, 28000.00),
(127, 1077, 227, 1, 3000.00),
(128, 1078, 228, 1, 5000.00),
(129, 1079, 229, 1, 4000.00),
(130, 1080, 230, 1, 1000.00),
(131, 1081, 231, 1, 2500.00),
(132, 1082, 232, 1, 9000.00),
(133, 1083, 233, 1, 3500.00),
(134, 1084, 234, 1, 2000.00),
(135, 1085, 235, 1, 300.00);
 */

/* INSERT INTO finalsampledb.Returns VALUES
(101, 1051, 201, '2025-01-20', 'Customer changed mind'),
(102, 1053, 203, '2025-02-01', 'Incorrect size'),
(103, 1056, 206, '2025-02-25', 'Product not as described'),
(104, 1059, 209, '2025-03-15', 'Screen flickering'),
(105, 1063, 213, '2025-04-12', 'Uncomfortable fit'),
(106, 1064, 214, '2025-04-28', 'Suction power weak'),
(107, 1067, 217, '2025-05-10', 'Stylus unresponsive'),
(108, 1071, 221, '2025-06-07', 'Low brightness'),
(109, 1075, 225, '2025-07-05', 'Connectivity issues'),
(110, 1078, 228, '2025-07-25', 'Inaccurate readings'),
(111, 1082, 232, '2025-08-22', 'Installation difficulty'),
(112, 1085, 235, '2025-09-12', 'Too small'); */

-- SELECT * FROM sampledb.Customers;
-- SELECT * FROM sampledb.Orders;
-- SELECT * FROM sampledb.Products;
-- SELECT * FROM finalsampledb.OrderDetails;
-- SELECT * FROM finalsampledb.Returns;


-- RENAME TABLE sampledb.Customers TO sampledb.customer_info;
-- RENAME TABLE sampledb.Products TO sampledb.product_info;
-- RENAME TABLE sampledb.Orders TO sampledb.order_info;
-- RENAME TABLE finalsampledb.OrderDetails TO finalsampledb.order_details;
-- RENAME TABLE finalsampledb.Returns TO finalsampledb.return_info;
-- SHOW TABLES FROM sampledb;

-- These are the practice queries for the sample database.

/* SELECT first_name, last_name FROM customer_info
WHERE order_date > '2025-06-01' and total_amount > 10000.00;
 */

-- SELECT * FROM sampledb.customer_info;
-- SELECT * FROM sampledb.product_info;
-- SELECT * FROM sampledb.order_info;
-- SELECT * FROM finalsampledb.order_details;
-- SELECT * FROM finalsampledb.return_info;

/* SELECT first_name, last_name, COUNT(order_id) AS total_orders 
FROM sampledb.customer_info
JOIN sampledb.order_info ON customer_info.customer_id = order_info.customer_id
GROUP BY first_name, last_name
HAVING COUNT(order_id) > 2;
 */

/* SELECT COUNT(product_name) as count_of_items
FROM sampledb.product_info; */
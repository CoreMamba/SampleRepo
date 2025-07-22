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

-- CREATE TABLE Customers (
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

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

/* USE sampledb;
Insert INTO customers (first_name, last_name, email, phone) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890'),
('Jane', 'Smith', 'jane.smith@example.com', '987-654-3210'); 
 */

--  SELECT * FROM sampledb.customers;

-- DESCRIBE customers;
SELECT * FROM customers;

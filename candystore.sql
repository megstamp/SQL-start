 -- Create candystore database;
CREATE DATABASE candystore;

-- Switch to candystore database:
USE candystore;

-- Create the customers table:
CREATE TABLE customers (
    customerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(20) NOT NULL, 
    lastName VARCHAR(20) NOT NULL,
    email VARCHAR(30), 
    phone VARCHAR(20),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add our first customer:
INSERT INTO customers (firstName, lastName, email, phone) 
VALUES ('Liz', 'Cerami', 'liz@bocacode.com,','976-clas');

-- Let's get ALL of the customers:
SELECT * FROM customers;

INSERT INTO customers (firstName, lastName, email, phone) 
VALUES ('Cass', 'Curcio', 'cassandra@bocacode.com','976-CODE');

SELECT * FROM customers;

-- To find a specific custer I can run:
SELECT * FROM customers WHERE firstName = 'Cassandra';


-- Create the orders table:
CREATE TABLE orders ()(
    orderId INT AUTO_INCREMENT PRIMARY KEY,
    customerId INT NOT NULL,
    total DECIMAL(6,2),
    tax DECIMAL (7,2),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ;

-- now let's add an order to our order table:
INSERT INTO orders(customerId, total, tax)
VALUES (1, 19.48, 0.18), (2, 49.26, 3.44);

-- We can show the orders by:
 SELECT * FROM orders;

 --How can I seatch for all of Damian's orders?
 SELECT * FROM customers
JOIN orders ON orders.customerId = customers.customerId
WHERE firstName = 'Damian';





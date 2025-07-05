CREATE DATABASE IF NOT EXISTS EcommerceDB;
USE EcommerceDB;

DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Customers;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    price DECIMAL(10, 2)
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Customers (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

INSERT INTO Products (name, price) VALUES
('Laptop', 60000.00),
('Phone', 30000.00);

INSERT INTO Orders (customer_id, product_id, order_date, quantity) VALUES
(1, 1, '2025-07-01', 1),
(1, 2, '2025-07-02', 2),
(2, 2, '2025-07-03', 1);

DELIMITER //

CREATE PROCEDURE GetCustomerOrders(IN cust_id INT)
BEGIN
    SELECT o.order_id, c.name AS customer, p.name AS product, p.price, o.quantity, o.order_date
    FROM Orders o
    JOIN Customers c ON o.customer_id = c.customer_id
    JOIN Products p ON o.product_id = p.product_id
    WHERE o.customer_id = cust_id;
END //

DELIMITER ;

DELIMITER //

CREATE FUNCTION PriceWithTax(price DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN price + (price * 0.18);
END //

DELIMITER ;

CALL GetCustomerOrders(1);

SELECT PriceWithTax(60000.00) AS Final_Price_With_Tax;

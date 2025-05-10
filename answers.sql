-- ### Question 1 Achieving 1NF (First Normal Form) 🛠️
CREATE DATABASE shop;
USE shop;
CREATE TABLE ProductDetail(
orderId INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR (100),
productId INT PRIMARY KEY ,
products VARCHAR (100)
);

-- ### Question 2 Achieving 2NF (Second Normal Form) 🧩

CREATE TABLE customers(
customerId INT PRIMARY KEY AUTO_INCREMENT,
customerName VARCHAR (100)
);

CREATE TABLE orders(
orderId INT PRIMARY KEY AUTO_INCREMENT,
quantity INT, 
FOREIGN KEY (customerId) REFERENCES customers (customerId), 
FOREIGN KEY (productId) REFERENCES products (productId)

);

CREATE TABLE products(
productId INT PRIMARY KEY AUTO_INCREMENT,
productName VARCHAR (100),
quantity

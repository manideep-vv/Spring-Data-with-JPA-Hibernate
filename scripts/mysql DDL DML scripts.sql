use mydb;

create table product(
id int PRIMARY KEY,
name varchar(20),
description varchar(100),
price decimal(8,3) 
);

select * from product;

CREATE DATABASE IF NOT EXISTS `ecommerce` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE ecommerce;
CREATE TABLE `offices` (
  officeCode INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  city VARCHAR(50) NOT NULL, 
  phone VARCHAR(10) NOT NULL, 
  addressLine1 VARCHAR(300) NOT NULL, 
  addressLine2 VARCHAR(100) DEFAULT NULL, 
  state VARCHAR(100) DEFAULT NULL, 
  country VARCHAR(100) NOT NULL, 
  postalCode VARCHAR(6) NOT NULL, 
  territory VARCHAR(10) NOT NULL, 
  CONSTRAINT PK_officeCode PRIMARY KEY(officeCode), 
  CONSTRAINT UQ_offices_phone UNIQUE(phone)
) ENGINE = InnoDB;
CREATE TABLE `employees` (
  employeeNumber INT(8) NOT NULL AUTO_INCREMENT, 
  lastName VARCHAR(100) NOT NULL, 
  firstName VARCHAR(100) NOT NULL, 
  extension VARCHAR(100) DEFAULT 'x000', 
  email VARCHAR(100) NOT NULL, 
  officeCode INT(8) UNSIGNED, 
  reportsTo INT(8), 
  jobTitle VARCHAR(50) DEFAULT 'Employee', 
  CONSTRAINT empid_pk PRIMARY KEY(employeeNumber), 
  CONSTRAINT UQ_employees_email UNIQUE(email), 
  CONSTRAINT FK_offices_officeCode FOREIGN KEY(officeCode) REFERENCES offices(officeCode), 
  CONSTRAINT FK_employees_reportsTo FOREIGN KEY(reportsTo) REFERENCES employees(employeeNumber)
) ENGINE = InnoDB;
CREATE TABLE `productLines` (
  productLine INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  textDescription VARCHAR(100), 
  htmlDescription VARCHAR(100), 
  image VARCHAR(300), 
  CONSTRAINT PK_productLines PRIMARY KEY(productLine)
) ENGINE = InnoDB;
CREATE TABLE `products` (
  productCode INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  productName VARCHAR(100) NOT NULL, 
  productLine INT(8) UNSIGNED NOT NULL, 
  productScale VARCHAR(300), 
  productVendor VARCHAR(100) NOT NULL, 
  productDescription VARCHAR(300), 
  quantityInStock INT(8) UNSIGNED NOT NULL, 
  buyPrice DECIMAL(15, 2) UNSIGNED NOT NULL, 
  MSRP DECIMAL(15, 2) UNSIGNED NOT NULL, 
  CONSTRAINT PK_products_productCode PRIMARY KEY(productCode), 
  CONSTRAINT UQ_products_productName UNIQUE(productName), 
  CONSTRAINT FK_products_productLines FOREIGN KEY(productLine) REFERENCES productLines(productLine)
) ENGINE = InnoDB;
CREATE TABLE `customers` (
  customerNumber INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  customerName VARCHAR(100) NOT NULL, 
  contactLastName VARCHAR(100), 
  contactFirstName VARCHAR(100), 
  phone VARCHAR(10) NOT NULL, 
  addressLine1 VARCHAR(300) NOT NULL, 
  addressLine2 VARCHAR(100) DEFAULT NULL, 
  city VARCHAR(50) NOT NULL, 
  state VARCHAR(50) DEFAULT NULL, 
  postalCode VARCHAR(6) NOT NULL, 
  country VARCHAR(50) NOT NULL, 
  salesRepEmployeeNumber INT(8), 
  creditLimit DECIMAL(11, 2) UNSIGNED DEFAULT 0.00, 
  CONSTRAINT PK_customerNumber PRIMARY KEY(customerNumber), 
  CONSTRAINT UQ_customers_phone UNIQUE(phone), 
  CONSTRAINT FK_employees_customers FOREIGN KEY(salesRepEmployeeNumber) REFERENCES employees(employeeNumber)
) ENGINE = InnoDB;
CREATE TABLE `orders` (
  orderNumber INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  orderDate DATETIME NOT NULL, 
  requiredDate DATETIME, 
  shippedDate DATETIME NOT NULL, 
  STATUS VARCHAR(50) NOT NULL, 
  comments VARCHAR(300), 
  customerNumber INT(8) UNSIGNED NOT NULL, 
  CONSTRAINT PK_orders PRIMARY KEY(orderNumber), 
  CONSTRAINT FK_customers_orders FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber)
) ENGINE = InnoDB;
CREATE TABLE `orderDetails` (
  orderNumber INT(8) UNSIGNED NOT NULL AUTO_INCREMENT, 
  productCode INT(8) UNSIGNED NOT NULL, 
  quantityOrdered INT(8) UNSIGNED NOT NULL, 
  priceEach DECIMAL(15, 2) NOT NULL, 
  orderLineNumber INT(8), 
  CONSTRAINT PK_orderDetails_orderNumber_productCode PRIMARY KEY(orderNumber, productCode), 
  CONSTRAINT FK_orderDetails_productCode FOREIGN KEY(productCode) REFERENCES products(productCode)
) ENGINE = InnoDB;
CREATE TABLE `payments` (
  customerNumber INT(8) UNSIGNED NOT NULL, 
  checkNumber INT(8) UNSIGNED, 
  paymentDate DATETIME NOT NULL, 
  amount DECIMAL(15, 2) NOT NULL, 
  CONSTRAINT PK_payments_customerNumber_checkNumber PRIMARY KEY(customerNumber, checkNumber), 
  CONSTRAINT UQ_payments_checkNumber UNIQUE(checkNumber), 
  CONSTRAINT FK_customers_payments_customerNumber FOREIGN KEY(customerNumber) REFERENCES customers(customerNumber)
) ENGINE = InnoDB;


CREATE TABLE customers    
( id number(10) NOT NULL AUTO_INCREMENT,
  name varchar2(50) NOT NULL,    
  email varchar2(50), 
  created_date DATE

);    

INSERT INTO customers (name,email,created_date) VALUES
					('fresco','fresco@tcs.com',TO_DATE('2020-06-11','YYYY-MM-DD'));
					

					
small table creation and insertion

sample data

create table with auto increment
---------------------------
CREATE TABLE person (
    id INT(10) NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    product VARCHAR(45) DEFAULT NULL,
    country VARCHAR(25) DEFAULT NULL,
    year INT NOT NULL,
    salary INT NOT NULL,
    PRIMARY KEY (id)  -- Add the primary key constraint here
);
 


INSERT INTO Person(Name, Product, Country, Year,Salary)   
VALUES ('Stephen', 'Computer', 'USA', 2015,200),   
('Joseph', 'Laptop', 'India', 2016,500),   
('John', 'TV', 'USA', 2016,700),  
('Donald', 'Laptop', 'England', 2015,600),  
('Joseph', 'Mobile', 'India', 2015,159),  
('Peter', 'Mouse', 'England', 2016,999);  


INSERT INTO Person(Name, Product, Country, Year,Salary)   
VALUES ('Rama', 'Sweeper', 'USA', 2015,200),   
('Ranga', 'Router', 'India', 2015,159),   
('Charan', 'Laptop', 'England', 2016,600),
('Prakash', 'Transistor', 'England', 2016,999),
('Anuradha', 'keyboard', 'USA', 2016,700)





INSERT INTO product (product_id,price,product_name) VALUES (1,400 ,'Computer')

INSERT INTO Person(Name, Product, Country, Year,Salary)   VALUES ('santhosh', 'Doctor', 'CANADA', 2028,5200); commit
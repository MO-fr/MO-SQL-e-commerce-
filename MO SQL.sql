CREATE DATABASE E_commerce_Store;
	
CREATE TABLE Customers (
unique_id INT auto_increment PRIMARY KEY,
first_name VARCHAR(20) NOT NULL,
last_name VARCHAR(50) NOT NULL,
email VARCHAR(50) unique,
phone_number INT(20),
address VARCHAR(20),
state VARCHAR(10),
zip_code INT(10) 
);

CREATE TABLE product (
	
);


CREATE DATABASE MyStore;

USE MyStore;

CREATE TABLE Customer (
    CustomerId INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName NVARCHAR(50),
    Phone NVARCHAR(15),
    Address NVARCHAR(100)
);


INSERT INTO Customer (CustomerName, Phone, Address)
VALUES
    ('hari', '123-456-7890', '123 dhkil'),
    ('vanapalli ', '987-654-3210', '456 Elm mask'),
    ('naidu', '555-555-5555', '789 ou colony');

	ALTER TABLE Customer
ADD Country NVARCHAR(50),
    Salary DECIMAL(10, 2),
    Pincode NVARCHAR(10);

	select *from Customer;

	UPDATE Customer
SET Country = 'uk',
    Salary = 40000.00,
    Pincode = '500060'
WHERE CustomerName = 'vanapalli';



UPDATE Customer
SET Salary = 55000.00
WHERE CustomerName = 'hari';

SELECT Country, COUNT(*) AS NumberOfCustomers
FROM Customer
GROUP BY Country;

SELECT
    MAX(Salary) AS MaxSalary,
    MIN(Salary) AS MinSalary,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Customer;

CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(50),
    Quantity INT,
    Rating INT
);

SELECT * FROM Customer;

SELECT * FROM Orders;

drop table Orders;

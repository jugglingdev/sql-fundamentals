CREATE TABLE Orders (
    OrderID int,
    ProductID int,
    OrderDate date
);

CREATE TABLE Products (
    ProductID int,
    ProductName varchar(255)
);

INSERT INTO Orders
VALUES (1, 1, '2023-01-01'),
       (2, 2, '2023-01-02');
       
INSERT INTO Products
VALUES (1, 'Laptop'),
       (2, 'Desk Chair');

SELECT ProductName, OrderDate
FROM Orders
INNER JOIN Products
ON Orders.ProductID = Products.ProductID;
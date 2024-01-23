CREATE TABLE Products (
    ProductID int,
    ProductName varchar(255),
    Price float,
    Category varchar(255)
);

INSERT INTO Products
VALUES (1, 'Laptop', 1200.0, 'Electronics'), 
       (2, 'Desk Chair', 250.5, 'Furniture');

SELECT *
FROM Products;
CREATE TABLE Products (
    ProductID int,
    ProductName varchar(255),
    Price float,
    Category varchar(255)
);

INSERT INTO Products
VALUES (1, 'Apple', 0.50, 'Fruit'), 
       (2, 'Bread', 1.50, 'Bakery');

SELECT AVG(Price)
FROM Products;
CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    SaleAmount float
);

INSERT INTO Sales
VALUES (1, 1, 1200.00), 
       (2, 2, 250.50);

SELECT SUM(SaleAmount)
FROM Sales;
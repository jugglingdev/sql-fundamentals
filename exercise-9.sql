CREATE TABLE Sales (
    SaleID int,
    ProductID int,
    QuantitySold int,
    SaleDate date
);

INSERT INTO Sales
VALUES (101, 1, 50, '2022-01-01'),
       (102, 2, 30, '2022-01-02'), 
       (103, 1, 20, '2022-01-03');

SELECT SUM(QuantitySold)
FROM Sales
WHERE ProductID = 1;
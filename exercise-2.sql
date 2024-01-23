CREATE TABLE Employees (
    EmployeeID int,
    FirstName varchar(255),
    LastName varchar(255),
    Department varchar(255)
);

INSERT INTO Employees
VALUES (1, 'Alice', 'Johnson', 'HR'), 
       (2, 'Bob', 'Smith', 'IT');

SELECT FirstName, LastName
FROM Employees;
CREATE TABLE Employees (
    EmployeeID int,
    FirstName varchar(255),
    LastName varchar(255),
    DepartmentID int
);

CREATE TABLE Departments (
    DepartmentID int,
    DepartmentName varchar(255)
);

INSERT INTO Employees
VALUES (1, 'Alice', 'Johnson', 1),
       (2, 'Bob', 'Smith', 2);
       
INSERT INTO Departments
VALUES (1, 'HR'),
       (2, 'IT');

SELECT FirstName, LastName, DepartmentName
FROM Employees
INNER JOIN Departments
ON Employees.DepartmentID = Departments.DepartmentID;
-- Creating the Employees table
CREATE TABLE Employees4 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

-- Creating the Departments table
CREATE TABLE Departments1 (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(100)
);


-- Inserting data into the Employees table
INSERT INTO Employees4 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

-- Inserting data into the Departments table
INSERT INTO Departments1(DepartmentID, DepartmentName)
VALUES
(101, 'Human Resources'),
(102, 'Finance'),
(103, 'IT');

select * from Employees4
select * from Departments1

--1)Write a SQL query to list the names of employees along with the names of the departments they work in.
select FirstName,LastName,DepartmentName from Employees4 e join Departments1 d on e.DepartmentID=d.DepartmentID 

--2)Write a SQL query to list all the departments and the employees working in them, including departments with no employees.
select FirstName,LastName,DepartmentName from Employees4 e left join Departments1 d on e.DepartmentID=d.DepartmentID 


--3)Write a SQL query to find the names of employees who do not belong to any department (i.e., no matching department ID).
select FirstName,LastName,DepartmentName 
from Employees4 e 
left join Departments1 d on e.DepartmentID=d.DepartmentID
where e.DepartmentID is null

--4)Write a SQL query to list the names of employees who work in the same department as 'Jane Doe'.
SELECT FirstName, LastName 
FROM Employees4 
WHERE DepartmentID = (
    SELECT DepartmentID 
    FROM Employees4 
    WHERE FirstName = 'Jane' AND LastName = 'Doe')


--5)Write a SQL query to find the department with the highest total salary paid to its employees.
SELECT TOP 1 DepartmentID, SUM(Salary) AS TotalSalary
FROM Employees4
GROUP BY DepartmentID
ORDER BY TotalSalary DESC

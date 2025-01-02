CREATE TABLE Employees5 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees5 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);



--1)Write a SQL query to select all columns and rows from the Employees table.
select * from Employees5

--2)Write a SQL query to find the names and email addresses of all employees who work in the department with DepartmentID = 101.
select firstname,lastname,email from Employees5 where DepartmentID=101

--3)Write a SQL query to find the total number of employees in the Employees table.
select count(*) from Employees5

--4)Write a SQL query to find the details of employees who were hired in the year 2020.
select * from Employees5 where hiredate like '2020%'

--5)Write a SQL query to update the salary of 'Jane Doe' to 90,000.
update Employees5 set Salary=90000 where firstname='jane' and LastName='doe'


CREATE TABLE Employees1 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees1 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

SELECT * FROM Employees1
--1)Write a SQL query to find the names of employees who have a salary higher than the average salary of all employees.
SELECT FirstName,LASTNAME FROM Employees1 WHERE Salary >(SELECT AVG(SALARY) FROM Employees1)

--2)Write a SQL query to list the employee names and their departments for employees who were hired after the oldest employee in the company.
SELECT FIRSTNAME,LASTNAME,DepartmentID 
FROM Employees1
WHERE HIREDATE> (SELECT MIN(HIREDATE) FROM Employees1)

--3)Write a SQL query to find the details of the employee(s) with the highest salary.
select * from Employees1 where salary=(select max(salary) from Employees1)


--4)Write a SQL query to find the names of employees who work in the same department as 'John Smith'.
select Firstname,lastname from Employees1
where DepartmentID=(select DepartmentID FROM Employees1 WHERE FirstName='JOHN' AND LastName='SMITH')


--5)Write a SQL query to find the names of employees who do not belong to the department with the highest average salary.
SELECT FirstName,LastName FROM Employees1
WHERE DepartmentID != (SELECT TOP 1 DepartmentID FROM Employees1 GROUP BY DepartmentID ORDER BY AVG(SALARY) DESC)
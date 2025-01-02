CREATE TABLE Employees2 (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(50),
    LastName NVARCHAR(50),
    Email NVARCHAR(100) UNIQUE,
    DepartmentID INT,
    HireDate DATE,
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees2 (EmployeeID, FirstName, LastName, Email, DepartmentID, HireDate, Salary)
VALUES 
(1, 'John', 'Smith', 'john.smith@example.com', 101, '2021-06-15', 75000.00),
(2, 'Jane', 'Doe', 'jane.doe@example.com', 102, '2020-03-10', 85000.00),
(3, 'Michael', 'Johnson', 'michael.johnson@example.com', 101, '2019-11-22', 95000.00),
(4, 'Emily', 'Davis', 'emily.davis@example.com', 103, '2022-01-05', 68000.00),
(5, 'William', 'Brown', 'william.brown@example.com', 102, '2018-07-19', 80000.00);

SELECT * FROM Employees2

--1)Write a SQL query to find the names of employees whose first names start with the letter 'J'.
SELECT FIRSTNAME,LASTNAME FROM Employees2 WHERE FIRSTNAME LIKE 'J%'

--2)Write a SQL query to find the names of employees whose last names end with the letter 'n'.
SELECT FIRSTNAME,LASTNAME FROM Employees2 WHERE LASTNAME LIKE '%N'


--3)Write a SQL query to find the email addresses of employees that contain the word "john".
SELECT FIRSTNAME,EMAIL FROM Employees2 WHERE EMAIL LIKE '%JOHN%'

--4)Write a SQL query to find the names of employees whose first names have exactly 5 characters.
SELECT FIRSTNAME,LASTNAME FROM Employees2 WHERE FirstName LIKE '_____'
SELECT * FROM Employees2

--5)Write a SQL query to find the names of employees whose last names contain the letter 'a' as the second character.
SELECT FIRSTNAME,LASTNAME FROM Employees2 WHERE LastName LIKE '_A%'
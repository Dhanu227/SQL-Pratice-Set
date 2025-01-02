--How do you select employees who work in the 'IT' department and have a salary greater than 75,000?
select * from Employees where Department='IT' and salary > 75000

-- How do you find employees who work in the 'HR' department or have a salary less than 60,000?
select * from Employees where Department='HR' or salary < 60000

--  How do you select employees who do not work in the 'Finance' department?
 select * from Employees where Department !='Finance' 


 select * from Employees
--   How do you find employees whose salary is between 60,000 and 70,000 and who work in the 'Finance' department?
select * from Employees where Department ='Finance' and salary>60000 and Salary<70000

--   How do you find employees who work in the 'IT' department and do not have a salary greater than 80,000?
select * from Employees where Department='IT' and salary!>80000

--   How do you find employees who work in the 'HR' or 'Finance' departments and have a salary greater than 65,000?
select * from Employees where (Department='HR' or Department='Finance') and Salary>65000
 select * from Employees

--How do you select employees whose last name starts with 'D' and do not work in the 'HR' department?
select * from Employees where LastName like 'D%' and Department!='HR'

--   How do you find employees who do not work in the 'IT' department and have a salary greater than 70,000?
select * from Employees where Department!='IT' and salary>70000


--    How do you select employees who work in the 'IT' department and either have a salary greater 
----than 75,000 or have the first name 'Laura'?
select * from Employees where Department='IT' and (salary>75000 or FirstName='laura')


--10. How do you find employees who do not work in the 'HR' or 'IT' departments?
select * from Employees where Department!='IT' and Department!='HR'
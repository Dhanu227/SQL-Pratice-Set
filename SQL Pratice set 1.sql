--How do you select employees with a salary greater than 70,000?

 select * from Employees where Salary>70000

--How do you sort the results by Last Name in ascending order?

Select * from Employees order by LastName ASC

 --How do you select distinct departments from the Employees table?

 select distinct Department from Employees

  --How do you count the number of employees in each department?
  Select department, count(*) from Employees group by Department

  --How do you find the maximum salary in the Employees table?

  select max(salary) from Employees

   --How do you find the average salary of employees in the 'Finance' department?

   select avg(salary) from Employees where Department = 'finance'

   --How do you select employees whose last name starts with 'M'?
select * from Employees where LastName like 'm%'
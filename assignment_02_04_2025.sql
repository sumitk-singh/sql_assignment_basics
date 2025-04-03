-- name start with s
select name, department, salary
from employees
where name LIKE 'S%';

-- ordered by salary
select name, department, salary
from employees
order by salary desc;

-- update salary whose id is 3
update employees
set salary = 75000
where id = 3;

-- Assignment dated: 02-04-2025
/*1. Write an SQL query to find all employees who are in the "IT" or "Finance" department and have a salary greater than â‚¹70,000. 
The results should be ordered by salary in descending order.*/

select * from employees  
where department in ('IT', 'Finance')  
and salary > 70000  
order by salary desc;  


/* 2. Employees Joined After a Specific Date
Write an SQL query to find all employees who joined after 1st January 2021. 
The records should be sorted by joining date in ascending order.*/

select * from employees
where joining_date > 2021-01-01
order by joining_date desc;


/*3. Employees with Specific Salary Range
Write an SQL query to find all employees with a salary between â‚¹50,000 and â‚¹80,000. 
Sort the results by department in ascending order and by salary in descending order.*/

select * from employees  
where salary between 50000 and 80000  
order by department asc, salary desc;


/*4. Employees with Distinct Departments
Write an SQL query to display a list of distinct departments where employees work, 
ordered alphabetically in ascending order.*/

select distinct department  
from employees  
order by department asc;


/*5. Employees from a List of Departments
Write an SQL query to find employees who work in either the "HR", "IT", or "Marketing" departments. 
The results should be ordered by department name in ascending order and then by salary in ascending order.*/

select * from employees  
where department in ('HR', 'IT', 'Marketing')  
order by department asc, salary asc;


/*6. Find Employees with Top Salaries
Write an SQL query to retrieve the top 5 highest-paid employees (based on salary). 
Sort the results by salary in descending order.*/

select * from employees  
order by salary desc  
limit 5;


/*7. Filter Employees by Salary and Name Pattern
Write an SQL query to find all employees who have a salary greater than â‚¹60,000 and whose name starts with "A". 
The results should be ordered by salary in ascending order.*/

select * from employees  
where salary > 60000  
and name like 'A%'  
order by salary asc;


/*8. Employees Who Joined in 2020 or 2021
Write an SQL query to find all employees who joined between 1st January 2020 and 31st December 2021. 
The results should be ordered by joining date in descending order.*/

select * from employees  
where joining_date between '2020-01-01' and '2021-12-31'  
order by joining_date desc;


/*9. Find Employees Not in Specific Departments
Write an SQL query to find all employees who do not work in the "HR" or "Finance" departments. 
The results should be ordered by name in ascending order.*/

select * from employees  
where department not in ('HR', 'Finance')  
order by name asc;


/*10. Employees Who Have Salary Greater Than a Given Range
Write an SQL query to find all employees whose salary is greater than â‚¹60,000, and list only their names and departments. 
The results should be ordered by name in ascending order.*/

select name, department from employees  
where salary > 60000  
order by name asc;


/*11. Find the Number of Employees in Each Department
Write an SQL query to display the number of employees in each department. 
The results should be ordered by number of employees in descending order.*/

select department, count(department) from employees
group by department
order by department desc;

/*12. Write an SQL query to display employee names, departments, and salaries, 
but only for employees whose salary is in the range â‚¹60,000 to â‚¹100,000. 
Order the results by department in ascending order and then by salary in descending order.*/

select name, department, salary from employees
where salary between 60000 and 100000
order by department asc, salary desc;

/*13. Write an SQL query to find employees who are in the "IT", "HR", or "Marketing" departments, and whose salary is greater than â‚¹70,000. 
The results should be sorted first by department (alphabetically) and then by salary in descending order.*/

select name, department, salary from employees
where department in ('IT', 'HR', 'Marketing') and salary > 70000
order by department asc, salary desc;

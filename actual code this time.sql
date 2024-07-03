-- get list of the departments 
SELECT * FROM  departments;
-- Retrieve the department no and the total salary for those departments
-- containing at least two employees.
SELECT department_no,  SUM(salary)
FROM employees
GROUP BY department_no
HAVING count(*)  >=  2;

-- Retrieve the department no and name for a specific department (e.g., 5)
SELECT dept_no, dept_name
FROM departments
WHERE dept_no = 5;

-- Retrieve the department no and name for Customer
SELECT dept_no, dept_name
FROM departments
WHERE dept_name = 'Customer Service';


SELECT dept_no 'Department Number',
       dept_name 'Department Name'
FROM departments
WHERE dept_name = 'Customer Service';

--Retrieve top 10 records from the employees table
SELECT * FROM employees LIMIT 10;

-- Get the count of employees in each department
SELECT dept_no,count(*) 'Number of Employees'
FROM dept_emp
GROUP BY department_no;

-- Get the count of employees from employees table
SELECT count(*) 'Number of Employees'
FROM employees;

--Retrieve top 5 employees records
SELECT * FROM employees LIMIT 5;

-- Retrieve first name, last name from employees table
SELECT first_name, last_name
FROM employees
LIMIT 10;


-- Retrieve first name, last name from employees table and concatenate them using concat function using the data from employees table
SELECT first_name,
        last_name,
        CONCAT(first_name, ' ', last_name) 'Full Name'
FROM employees
LIMIT 10;

-- Get the first name and last name in upper case
SELECT UPPER(first_name) 'First Name',
       LOWER(last_name) 'Last Name'
FROM employees
LIMIT 5;

-- Functions : Count, Upper, Lower, Concat, Sum, Avg, Min, Max
-- Get the count of employees
SELECT COUNT(*) 'Number of Employees'
FROM employees;
-- Count the number of employees
SELECT COUNT(*) 'Number of Employees'
FROM employees;

-- Get sample 10 records from the salaries table
SELECT * FROM salaries LIMIT 10;

-- Get the maximum salary from salaries table
SELECT MAX(salary) 'Maximum Salary'
FROM salaries;

-- Get the minimum salary from salaries table
SELECT MIN(salary) 'Minimum Salary'
FROM salaries;

-- Get the maximum, minimum and average salary from salaries table
SELECT MAX(salary) 'Maximum Salary',
       MIN(salary) 'Minimum Salary',
       AVG(salary) 'Average Salary'
FROM salaries;

-- Get the number of recorfs from titles table
SELECT COUNT(*) 'Number of Titles'
FROM titles;

-- Get sample 5 records from titles table
SELECT * FROM titles LIMIT 5;

-- Get the list of titles without duplicates
SELECT DISTINCT title
FROM titles;

--List of sql functions
--Aggregate functions (COUNT, SUM, AVG, MIN, MAX)
--Scalar functions (CONCAT, UPPER, LOWER, SUBSTRING, TRIM, etc.)
--Date and time functions (CURRENT_DATE, CURRENT_TIME, EXTRACT, etc.)

-- Get the current date and time
SELECT NOW() 'Current Date and Time';

-- Get the current date, time, date and time, date which is 50 years from now()
SELECT NOW() 'Current Date and Time',
       CURDATE() 'Current Date',
       CURTIME() 'Current Time',
       DATE(NOW()) + 50 '50 years into the future',


-- Generate a report with employee number, first name, last name and salaray
       SELECT e.emp_no, e.first_name, e.last_name, s.salary
       FROM employees e
       JOIN salaries s ON e.emp_no = s.emp_no
       LIMIT 10;

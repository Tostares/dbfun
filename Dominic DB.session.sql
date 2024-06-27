#-- get the list of the departments
SELECT * FROM  departments;
-- Retrieve the department ID and the total salary for those departments
-- containing at least two employees.
SELECT department_id ,  SUM(salary) FROM employees GROUP BY department_id HAVING count(*)  >=  2;
-- Retrieve the department ID and name for a specific department (e.g., 5)
SELECT department_id ,  department_name FROM departments WHERE department_id = 5;
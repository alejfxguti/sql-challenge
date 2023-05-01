-- ANALYSIS #1 List the employee number, last name, first name, sex, and salary of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;
-- This script uses a join between the employees and salaries tables. 
-- Selects the emp_no, last_name, first_name, sex, and salary fields from the two tables.
-- The ON clause specifies the condition emp_no for the join to be performed

-- ANALYSIS #2 List the first name, last name, and hire date for the employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
-- The script selects first_name, last_name, and hire_date from employees table.
-- This script uses the BETWEEN operator to select employees 
-- hired between January 1, 1986 and December 31, 1986

-- ANALYSIS #3 List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d ON dm.dept_no = d.dept_no
INNER JOIN employees e ON dm.emp_no = e.emp_no;
-- This query requires information from three different tables: departments, dept_manager, and employees.
-- The first join is between departments and dept_manager tables to get the manager's employee number for each department. 
-- The second join is between dept_manager and employees tables to get the manager's first and last names.

-- ANALYSIS #4 List the department number, employee number, last name, first name, and department name for each employee.
SELECT e.emp_no, e.last_name, e.first_name, de.dept_no, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no;
-- This query selects the employee number, last name, and first name from the employees table
-- the department number from the dept_emp table, and the department name from the departments table.
-- It joins the employees and dept_emp tables, and then joins the resulting table with the departments table to get the department name.

-- ANALYSIS #5 List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT first_name, last_name, sex 
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
-- Used where to filter employees according to parameters. All data was from one table: employees.

-- ANALYSIS #6 List each employee in the Sales department, including their employee number, last name, and first name.
SELECT e.emp_no, e.last_name, e.first_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';
-- This query retrieves the employee number, last name, and first name of all employees who belong to the Sales department.
-- It uses an inner join between the employees and dept_emp tables to link the department number to the employee number.
-- Finally, a WHERE clause filters the results to only include employees in the Sales department.

-- Analysis #7 List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de ON e.emp_no = de.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');
-- This query selects the employee number, last name, first name, and department name from the employees, dept_emp, and departments tables.
-- It uses aliases for the tables to simplify the query, and a WHERE clause to filter results to only those in the Sales or Development departments.
-- The resulting table shows all employees in those departments, along with their relevant information.

-- ANALYSIS #8 List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name). 
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;
-- Query to list the frequency counts, in descending order, of all the employee last names.
-- This query uses the employees table and groups the last names by count, then orders the results in descending order.
-- The result includes the last name and its frequency count.

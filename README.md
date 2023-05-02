# Pewlett Hackard Employees 1980s and 1990s - A SQL Data Analysis
In this project, we analyzed a SQL database of employee information using SQL queries to extract valuable insights from the data. The database consisted of six tables: departments, employees, titles, dept_emp, dept_manager, and salaries.

## Methodology
We began by reviewing the six csv files to understand the data and its connections. Using this knowledge, we drew an entity-relationship diagram (ERD png located in the repository) using dbdiagram.io, which helped us write the SQL statements to create the data tables. We ordered the creation of tables based on foreign key constraints to prevent errors. The SQL table schemata can be found in the EmployeeSQL folder.

Once the tables were created, we loaded the data from the csv files into the appropriate tables using pgAdmin. After importing the data, we were ready to begin data analysis.

## Data Analysis
We ran the following SQL queries on the database to extract useful information. The SQL analysis queries can be found in the EmployeeSQL folder.

1. List the employee number, last name, first name, sex, and salary of each employee.
2. List the first name, last name, and hire date for the employees who were hired in 1986.
3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
6. List each employee in the Sales department, including their employee number, last name, and first name.
7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

## Conclusion
Through this project, we were able to effectively analyze a SQL database and extract important information using SQL queries. This type of data analysis can be useful for companies to understand their employees better and make informed decisions based on the data.

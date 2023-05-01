# Research on Pewlett Hackard Employees 1980s and 1990s - sql-challenge

In this project, I began by reviewing 6 csv files to understand the data, its columns, and connections. The database consisted of six tables: departments, employees, titles, dept_emp, dept_manager, and salaries. Using SQL queries, we were able to extract valuable information from the database. I then took a stab at drawing an entity-relationship diagram using dbdiagram.io. I used this to write my sql statements to create the data tables and based on foreign key constraints I ordered the creation of tables appropriately as to not cause any errors. The SQL table schemata can be found in the EmployeeSQL folder.

Once the table was created I imported the csv files into the appropriate tables using pgAdmin. Once the data was loaded into the tables I was ready to begin data analysis. Below are the analyses I ran. The SQL analysis queries can be found in the EmployeeSQL folder.

## Data Analysis
Below are the queries we ran on the database and the information we extracted:

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

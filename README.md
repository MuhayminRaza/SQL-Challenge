# SQL-Challenge

This challenge asked us to finish some data engineering and modelling requirements. 
Data Engineering:
All required columns are defined for each table 
Columns are set to the correct data type 
Primary Keys set for each table 
Correctly references related tables 
Tables are correctly related using Foreign Keys 
Correctly uses NOT NULL condition on necessary columns
Accurately defines value length for columns 

Data Analysis: 
List the employee number, last name, first name, sex, and salary of each employee
List the first name, last name, and hire date for the employees who were hired in 1986 
List the manager of each department along with their department number, department name, employee number, last name, and first name 
List the department number for each employee along with that employee’s employee number, last name, first name, and department name 
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B 
List each employee in the Sales department, including their employee number, last name, and first name 
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name 
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name

The following was written with the help of a TA in office hours:
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees AS e
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE dept_name = 'Sales' OR dept_name = 'Development';

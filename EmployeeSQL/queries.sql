-- List the employee number, last name, first name, sex and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries as s
ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' 
AND hire_date <= '1986-12-31'

-- List the manager of each department along with their department number, department name, the manager's employee number, last name, first name.
SELECT dm.dept_no,e.first_name,e.last_name,e.emp_no FROM dept_manager dm
JOIN departments d USING(dept_no)
JOIN employees e USING(emp_no)

-- List the department of each employee along with their employee number, last name, first name, and department name. 
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name. 
SELECT employees.emp_no, employees.last_name, employees.first_name
FROM employees 
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments,including their employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees AS e
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name
SELECT last_name, COUNT(last_name) AS last_name_count 
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;
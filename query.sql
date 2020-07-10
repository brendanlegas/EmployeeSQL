-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no;

-- 2. List employees who were hired in 1986.
SELECT *
FROM employees
WHERE hire_date LIKE '%1986%';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number
-- last name, first name, and start and end employment dates

-- dept_manager table (department no, manager employee num, start and end employment dates)
-- employee table (to get the first and last name)
-- departments table (to get department name)

SELECT dept_manager.dept_no, dept_manager.emp_no, dept_manager.from_date, dept_manager.to_date, 
employees.first_name, employees.last_name,
departments.dept_name
FROM dept_manager
	JOIN employees ON (employees.emp_no=dept_manager.emp_no)
	JOIN departments ON (departments.dept_no=dept_manager.dept_no);

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name
-- employees table: emp_no, last_name, first_name
-- departments table: department name
-- dept_emp table: find out what department each employee works for
CREATE VIEW Employee_Departments AS
SELECT employees.emp_no, employees.first_name, employees.last_name, 
departments.dept_name 
FROM employees
	JOIN dept_emp ON (dept_emp.emp_no=employees.emp_no)
	JOIN departments ON (departments.dept_no=dept_emp.dept_no);
	
-- 5. List all employees whose first name is Hercules and last names begin with "B"
SELECT *
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT * 
FROM Employee_Departments 
WHERE dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT *
FROM Employee_Departments
WHERE dept_name IN ('Sales', 'Development')

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT last_name, COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY "Frequency" DESC;


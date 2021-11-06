--List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT e.emp_no "Employee Number",last_name "Last Name",first_name "First Name",sex "Sex" ,salary "Salary"
FROM employees e inner join salaries s on e.emp_no=s.emp_no

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name "First Name",last_name "Last Name" ,hire_date "Hire Date"
FROM employees WHERE date_part('year',hire_date)=1986

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name.
SELECT d.deptno "Department Number",d.dept_name "Department Name",
dm.emp_no "Manager''s Employee number",e.last_name "Last Name",e.first_name "First name"
FROM dept_manager dm INNER JOIN departments d ON dm.dept_no=d.deptno
INNER JOIN employees e ON dm.emp_no=e.emp_no

--List the department of each employee with the following information: employee number, last name, first name, and department name
SELECT e.emp_no "Employee Number" ,e.last_name "Last Name",e.first_name "First name",d.dept_name "Department Name"
FROM dept_emp de INNER JOIN employees e ON de.empno=e.emp_no 
INNER JOIN departments d ON de.dept_no=d.deptno

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name "First Name",last_name "Last Name", sex "Sex"
FROM employees WHERE first_name='Hercules' and last_name like 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT e.emp_no "Employee Number" ,e.last_name "Last Name",e.first_name "First name",d.dept_name "Department Name"
FROM dept_emp de INNER JOIN employees e ON de.empno=e.emp_no 
INNER JOIN departments d ON de.dept_no=d.deptno
WHERE d.dept_name='Sales'


--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.emp_no "Employee Number" ,e.last_name "Last Name",e.first_name "First name",d.dept_name "Department Name"
FROM dept_emp de INNER JOIN employees e ON de.empno=e.emp_no 
INNER JOIN departments d ON de.dept_no=d.deptno
WHERE d.dept_name='Sales' OR d.dept_name='Development'

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT last_name "Last Name",COUNT(emp_no) "Last Name Count" 
FROM employees GROUP BY last_name ORDER BY "Last Name Count" DESC
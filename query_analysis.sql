--1
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no;

--2
SELECT employees.emp_no, employees.first_name, employees.last_name, employees.gender, employees.hire_date, salaries.salary
FROM employees
LEFT JOIN salaries ON(employees.emp_no = salaries.emp_no)
WHERE DATE_PART('YEAR', employees.hire_date) = 1986
ORDER BY employees.emp_no;

 --3
SELECT dept_manager.dept_no , departments.dept_name, employees.emp_no, employees.last_name, employers.first_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
INNER JOIN employees ON(dept_manager.emp_no = employees.emp_no)
INNER JOIN departments ON(dept_manager.dept_no = departments.dept_no)
ORDER BY dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name, dept_manager.from_date, dept_manager.to_date;

--4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON(dept_emp.emp_no = employees.emp_no)
INNER JOIN departments ON(dept_emp.dept_no = departmnets.dept_no)
ORDER BY employees.emp_no;

--5
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries ON(employees.emp_no = salaries.emp_no)
WHERE employees.first_name ='Hercules' AND employees.last_name LIKE 'B%'
ORDER BY employees.emp_no;

--6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON(dept_emp.emp_no = employees.emp_no)
INNER JOIN departments ON(dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name = ‘Sales’
ORDER BY employees.emp_no;

--7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON(dept_emp.emp_no = employees.emp_no)
INNER JOIN departments ON(dept_emp.dept_no = departments.dept_no)
WHERE departments.dept_name in(“Sales”, “Development”)
ORDER BY employees.emp_no;

--8
SELECT employees.last_name, count(*) as counts
FROM employees
GROUP BY employees.last_name
ORDER BY count(*) desc;

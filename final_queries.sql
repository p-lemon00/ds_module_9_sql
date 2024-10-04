SELECT
employees.emp_no,
last_name,
first_name,
sex,
salary
FROM
	employees
JOIN
	salaries ON employees.emp_no = salaries.emp_no;

SELECT
	emp_no,
	first_name,
	last_name,
	hire_date
FROM
	employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT
    dept_manager.dept_no,
    dept_name,
    dept_manager.emp_no,
    last_name,
    first_name
FROM
    dept_manager
JOIN
    departments ON dept_manager.dept_no = departments.dept_no
JOIN
    employees ON dept_manager.emp_no = employees.emp_no;

SELECT
    dept_emp.dept_no,
	dept_emp.emp_no,
    last_name,
    first_name,
	dept_name
FROM
    dept_emp
JOIN
    departments ON dept_emp.dept_no = departments.dept_no
JOIN
    employees ON dept_emp.emp_no = employees.emp_no;

SELECT
	first_name,
	last_name,
	sex
FROM
    employees
WHERE
	first_name = 'Hercules'
	AND
	last_name LIKE 'B%';

SELECT
	employees.emp_no,
	last_name,
	first_name
FROM
	dept_emp
JOIN
	employees ON employees.emp_no = dept_emp.emp_no
JOIN
	departments ON departments.dept_no = dept_emp.dept_no
WHERE
	dept_name = 'Sales';

SELECT
	employees.emp_no,
	last_name,
	first_name,
	dept_name
FROM
	dept_emp
JOIN
	employees ON employees.emp_no = dept_emp.emp_no
JOIN
	departments ON departments.dept_no = dept_emp.dept_no
WHERE
	dept_name = 'Sales' or dept_name = 'Development';

SELECT
	last_name,
	COUNT (*)
FROM
	employees
GROUP BY
	last_name
ORDER BY 
	COUNT DESC;
	




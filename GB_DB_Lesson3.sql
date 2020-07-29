use employees;

-- Выбрать среднюю зарплату по отделам.

select salaries.salary, departments.dept_no, avg(salary) from salaries
	join dept_emp on salaries.emp_no = dept_emp.emp_no
	join departments on dept_emp.dept_no = departments.dept_no
	group by dept_no;

-- Выбрать максимальную зарплату у сотрудника.

select first_name, last_name, max(salary) from salaries
	join employees on salaries.emp_no = employees.emp_no;

-- Удалить одного сотрудника, у которого максимальная зарплата.

DELETE FROM employees 
WHERE 
	(emp_no = 
    (SELECT emp_no 
    FROM salaries 
    ORDER BY salary DESC 
    LIMIT 1));
    
-- Посчитать количество сотрудников во всех отделах.


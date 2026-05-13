-- INNER JOIN

SELECT dem.employee_id, age, occupation
FROM employee_demographics as dem
iNNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;

-- OUTER JOIN
SELECT *
FROM employee_demographics as dem
RIGHT JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
;


-- SELF JOIN
SELECT emp_1.employee_id as emp_santa,
emp_1.first_name as first_name_santa,
emp_1.last_name as last_name_santa,
emp_2.employee_id as emp_name,
emp_2.first_name as first_name_emp,
emp_2.last_name as last_name_emp
FROM employee_salary emp_1
JOIN employee_salary emp_2
	ON emp_1.employee_id + 1 = emp_2.employee_id
;

-- Joining Multiple Tables together
SELECT *
FROM employee_demographics as dem
iNNER JOIN employee_salary as sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_departments pd
	ON sal.dept_id = pd.department_id
;

SELECT *
FROM parks_departments;
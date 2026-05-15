-- CTEs

WITH CTE_example(Gender, AVG_Sal, MAX_Sal, MIN_Sal, COUNT_Sal) AS
(
SELECT gender, AVG(salary) avg_sal, MAX(salary) max_sal, MIN(salary) min_sal, COUNT(salary) count_sal
FROM employee_demographics dem
JOIN employee_salary sal
	ON dem.employee_id = sal.employee_id
GROUP BY gender
)
SELECT *
FROM CTE_example;









WITH CTE_example AS
(
SELECT employee_id, gender, birth_date
FROM employee_demographics dem
WHERE birth_date > "1985-01-01"
),
CTE_example2 AS
(
SELECT employee_id, salary
FROM employee_salary
WHERE salary > 50000
)
SELECT *
FROM CTE_example
JOIN CTE_example2 
	ON CTE_example.employee_id = CTE_example2.employee_id
;
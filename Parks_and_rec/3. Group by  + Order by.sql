-- GROUP BY

SELECT *
FROM employee_demographics;

SELECT gender, AVG(age), MAX(age), MIN(age), COUNT(age)
FROM employee_demographics
GROUP BY gender;

Select occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

-- ORDER BY

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;
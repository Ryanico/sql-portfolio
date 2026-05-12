-- WHERE clause

SELECT * 
FROM employee_salary
WHERE salary >= 50000;

-- AND OR NOT -- Logical Operators
SELECT * 
FROM employee_demographics
WHERE birth_date > "1985-01-01"
OR NOT gender = "Male";


SELECT * 
FROM employee_demographics
WHERE (first_name = "Leslie" AND age = 44) OR age > 55
;



-- LIKE Staement
-- % - Anything and _ - Specific value
SELECT * 
FROM employee_demographics
WHERE first_name LIKE "a__%"
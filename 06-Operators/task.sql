-- task 1
SELECT * FROM employees
WHERE salary BETWEEN 30000 AND 40000;

--task 2
SELECT * FROM employees
WHERE department IN ('HR', 'Finance', 'CEO');

--task 3
SELECT * FROM employees
WHERE department NOT IN ('HR', 'Finance');

--task 4
SELECT * FROM employees
WHERE name LIKE 'A%';

--task 5
SELECT * FROM employees
WHERE name LIKE '%ni%';

--taks 6
SELECT * FROM employees
WHERE email IS NULL;

SELECT * FROM employees
WHERE email IS NOT NULL;

SELECT * FROM employees
WHERE department = 'HR'
AND salary BETWEEN 30000 AND 50000;

SELECT id, name, salary, department
FROM employees
WHERE department IN ('HR', 'Finance')
and salary > 40000
AND email IS NOT NULL;
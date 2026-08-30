-- LIMIT = koto gula row nibo.
-- OFFSET = shurute koto gula row badh dibo.
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

--top 1 or highest paid
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 1;

--lowest salary
SELECT * FROM employees
ORDER BY salary ASC
LIMIT 1;

SELECT name, salary
FROM employees
WHERE department = 'HR'
ORDER BY salary DESC
LIMIT 2;

SELECT DISTINCT department
FROM employees; -- duplicate badh jay 

SELECT DISTINCT department
FROM employees
ORDER BY department ASC;

SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 2 OFFSET 2;

SELECT * FROM employees
LIMIT 10 OFFSET 0;

SELECT * FROM employees
LIMIT 4 OFFSET 5;

SELECT name, salary, department
FROM employees
WHERE department IN ('HR', 'Finance')
AND salary > 30000
ORDER BY salary DESC
LIMIT 3;
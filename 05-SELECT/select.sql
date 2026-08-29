SELECT * FROM employees;

-- select mane ki chai 
-- from mane kotha theke chai.
SELECT email
FROM employees;

SELECT name FROM employees;

SELECT name, salary
FROM employees;

SELECT * FROM employees
WHERE department = 'HR';

SELECT * FROM employees
WHERE id = 2;

SELECT * FROM employees
WHERE name = 'atul';

SELECT * FROM employees
WHERE salary < 40000;

SELECT * FROM employees
WHERE salary > 40000;

SELECT * FROM employees
WHERE salary >= 40000;


SELECT * FROM employees
WHERE salary <= 40000;


SELECT * FROM employees
WHERE department != 'CEO';

SELECT * FROM employees
WHERE department <> 'HR';

SELECT * FROM employees
WHERE department = 'HR'
AND salary > 40000;

SELECT * FROM employees
WHERE department = 'Software'
OR department = 'HR';

SELECT * FROM employees
WHERE NOT department = 'HR'

SELECT * FROM employees
WHERE (department = 'Software'
        OR department = 'Finance')
AND salary > 4000;


-- task 1
SELECT * FROM employees;

--task 2
SELECT * FROM employees
WHERE salary > 40000 AND salary < 100000;

--task 3
SELECT * FROM employees
WHERE salary > 'nabil' AND salary < 200000;

--task 4
SELECT * FROM employees
WHERE department = 'HR';

-- task 5
SELECT * FROM employees
WHERE salary > 30000 
    AND salary < 50000;

--task 6
SELECT * FROM employees
WHERE NOT department = 'HR';

--task 7
SELECT * FROM employees
WHERE department = 'HR'
AND salary > 100000;

--task 9
SELECT * FROM employees
WHERE (department = 'HR'
        OR department = 'Finance')
AND salary > 38000;
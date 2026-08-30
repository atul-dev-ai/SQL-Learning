
SELECT COUNT(*) FROM employees;

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(salary) AS avg_salary
FROM employees;

SELECT MAX(salary) as highest_salary
FROM employees;

SELECT MIN(salary) AS minimum_slry
FROM employees;

SELECT * FROM employees
WHERE department = 'HR';

SELECT SUM(salary) AS total_salary
FROM employees
WHERE department = 'HR';

SELECT COUNT(*) AS total_employee,
    SUM(salary) AS total_salary,
    AVG(salary) AS average_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS minimun_salary
FROM employees
WHERE salary > 40000;

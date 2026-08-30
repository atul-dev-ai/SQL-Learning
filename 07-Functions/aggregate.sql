
SELECT COUNT(*) FROM employees;
SELECT COUNT(email) 
FROM employees;

SELECT * FROM employees;

SELECT COUNT(*) AS salaries
FROM employees; -- as = temporary / custom name.

SELECT SUM(salary) AS total_salary
FROM employees;

SELECT AVG(salary) 
FROM employees;

SELECT AVG(salary) as average_salary
FROM employees;

SELECT MAX(salary)
FROM employees;

SELECT MAX(salary) as highest_salary
FROM employees;

SELECT MIN(salary) as minimum_salary
FROM employees;

SELECT 
    COUNT(*) AS total_employees,
    SUM(salary) AS total_salary,
    AVG(salary) AS avg_salary,
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees
WHERE department = 'HR';
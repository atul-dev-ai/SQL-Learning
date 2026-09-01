
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees
FROM departments d
JOIN employees e
ON d.id = e.department_id
GROUP BY d.id, d.name;

SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    SUM(e.salary) AS total_salary,
    AVG(e.salary) AS average_salary,
    MAX(e.salary) AS maximum_salary,
    MIN(e.salary) AS lowest_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name
HAVING COUNT(e.id) >= 2;

SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
WHERE e.salary >40000
GROUP BY d.id, d.name
HAVING COUNT(e.id) >= 2;

--task 1
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    SUM(e.salary) AS total_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

--task 2
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

--task 3
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    MAX(e.salary) AS highest_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

--task 5
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    MIN(e.salary) AS lowest_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

--task 6
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees,
    SUM(e.salary) AS total_salary,
    AVG(e.salary) AS average_salary,
    max(e.salary) AS highest_salary,
    MIN(e.salary) AS lowest_salary
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

--task 7
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees

FROM departments d 
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name
HAVING COUNT(e.id) > 2;

--task 8
SELECT
    d.name AS deparment_name,
    COUNT(e.id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d 
JOIN employees e 
ON e.department_id = d.id
GROUP BY d.id, d.name
HAVING AVG(e.salary) > 40000;

--task 9
SELECT
    d.name AS deparment_name,
    COUNT(e.id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d 
JOIN employees e 
ON e.department_id = d.id
GROUP BY d.id, d.name
HAVING AVG(e.salary) > 40000 AND COUNT(e.id) > 2;

-- task 10
SELECT
    d.name AS deparment_name,
    COUNT(e.id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d 
JOIN employees e 
ON e.department_id = d.id
GROUP BY d.id, d.name
ORDER BY AVG(e.salary) DESC;

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
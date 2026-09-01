SELECT d.name AS department, e.name AS employee
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
WHERE
    e.id IS NULL;

SELECT d.name AS department, e.name AS employee
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
WHERE
    e.id IS NOT NULL;

-- COUNT(*) use korle joined result er row count kore.
-- COUNT(e.id) use korle sudo non-NULL count kore.
-- LEFT JOIN e null row o count kore. eta safe.
SELECT d.name AS department, COUNT(e.id) AS total_employees
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY
    d.id,
    d.name;

-- COALESCE
SELECT
    d.name AS department,
    COALESCE(SUM(e.salary), 0) AS total_salary,
    COALESCE(AVG(e.salary), 0) AS average_salary,
    COALESCE(MAX(e.salary), 0) AS highest_salary,
    COALESCE(MIN(e.salary), 0) AS lowest_salary
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY
    d.id,
    d.name;

-- task 1
SELECT
    d.name AS department_name,
    COUNT(e.id) AS total_employees
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY
    d.id,
    d.name;
--task 2
SELECT
    d.name AS department_name,
    e.name AS employee_name
FROM departments d  
LEFT JOIN employees e 
ON d.id = e.department_id
WHERE e.id IS NULL;

--task 3
SELECT
    d.name AS department_name,
    COALESCE(COUNT(e.id), 0) AS total_employees
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY
    d.id,
    d.name;
-- task 5
SELECT
    d.name AS department,
    COUNT(e.id) AS total_employees,
    COALESCE(SUM(e.salary), 0) AS total_salary,
    COALESCE(AVG(e.salary), 0) AS average_salary,
    COALESCE(MAX(e.salary), 0) AS highest_salary,
    COALESCE(MIN(e.salary), 0) AS lowest_salary
FROM departments d
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY
    d.id,
    d.name;

-- task 6
SELECT
    d.name AS department_name,
    e.name AS employee
FROM departments d 
    LEFT JOIN employees e ON d.id = e.department_id
WHERE e.id IS NULL;

--task 7
SELECT
    d.name AS department_name,
    COUNT(e.id) AS employee_name
FROM departments d 
    LEFT JOIN employees e ON d.id = e.department_id
GROUP BY d.id, d.name
HAVING COUNT(e.id) > 2;

-- task 8
SELECT
    d.name AS department_name,
    AVG(e.salary) AS average_salary
FROM departments d JOIN employees e ON d.id = e.department_id
GROUP BY d.id, d.name
HAVING AVG(e.salary) > 40000;
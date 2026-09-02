--RIGHT JOIN
SELECT
    d.name AS department_name,
    e.name AS employee_name
FROM departments d 
RIGHT JOIN employees e 
ON d.id = e.department_id;
-- LEFT JOIN
SELECT
    d.name AS department_name,
    e.name AS employee_name
FROM departments d 
LEFT JOIN employees e 
ON d.id = e.department_id;

CREATE TABLE projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    department_id INT
)

INSERT INTO projects (name, department_id)
VALUES
    ('School Management System', 1),
    ('Banking System', 2),
    ('HR Portal', 3);

-- Multiple JOIN 
-- Employee + Department + Project
SELECT
    e.name AS employee,
    d.name AS department,
    p.name AS project
FROM employees e 
    JOIN departments d ON e.department_id = d.id
JOIN projects p ON d.id = p.department_id;

SELECT
    e.name AS employee,
    e.salary,
    d.name AS department,
    p.name AS project
FROM employees e JOIN departments d 
ON e.department_id = d.id
JOIN projects p 
ON p.department_id = d.id
WHERE d.name = 'software'
AND e.salary > 40000
ORDER BY e.salary DESC;

SELECT
    d.name, COUNT(e.id) AS total_employees
FROM departments d LEFT JOIN employees e ON d.id = e.department_id
WHERE e.salary > 40000
GROUP BY d.id, d.name
HAVING COUNT(e.id) >= 2
ORDER BY total_employees DESC
LIMIT 5;

-- task 1
SELECT
    e.name AS employee,
    d.name as department
FROM employees e 
LEFT JOIN departments d 
ON d.id = e.department_id;

-- task 2
SELECT
    d.name AS department,
    e.name AS employee
FROM departments d 
LEFT JOIN employees e 
ON d.id = e.department_id;

-- task 3
SELECT
    e.id AS employee_id,
    e.name AS employee_name
FROM employees e 
LEFT JOIN departments d 
ON e.department_id = d.id
WHERE d.id is NOT NULL;

--task 4
DESCRIBE employees;
ALTER TABLE employees
ADD COLUMN manager_id INT NULL;

UPDATE employees
SET manager_id = NULL
WHERE id =1;
UPDATE employees 
SET manager_id = 1
WHERE id IN (2,3);
UPDATE employees
SET manager_id = 2
WHERE id = 4;
UPDATE employees
SET manager_id = 4
WHERE id =5;

SELECT * FROM employees;

SELECT
    e.name AS empoyee,
    m.name AS manager
FROM employees e 
LEFT JOIN employees m 
ON e.manager_id = m.id;

SELECT * FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


SELECT AVG(salary) FROM employees;

SELECT id 
FROM departments
WHERE name = 'software';

SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE name = 'software'
);

--task 1
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    from departments
    WHERE name = 'finance'
);

-- task 2
SELECT *
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
    WHERE name IN ('hr', 'Software')
);

-- NOT IN Query
-- IN nirdisto department er employee ber korte
-- NOT IN nirdisto department badh diye baki sob department er employee
SELECT * FROM
employees
WHERE department_id NOT IN (
    SELECT id
    FROM departments
    WHERE name IN ('hr', 'software')
);

-- task 1
SELECT * FROM
employees
WHERE department_id NOT IN (
    SELECT id
    FROM departments
    WHERE name = 'Software'
);

-- task 2
SELECT * 
FROM employees
WHERE department_id 
NOT IN (
    SELECT id
    FROM departments
    WHERE name IN ('HR', 'Finance')
);
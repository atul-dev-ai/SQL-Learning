
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL
)

INSERT INTO departments (name)
VALUES
    ('Software'),
    ('Finance'),
    ('HR'),
    ('Management');

DESCRIBE TABLE departments;
SELECT * FROM departments;

ALTER TABLE departments
ADD COLUMN department_id INT;

UPDATE departments
SET department_id = 1
WHERE name = 'Software';

UPDATE departments
SET department_id = 2
WHERE name = 'Finance';

UPDATE departments
SET department_id = 3
WHERE name = 'HR';

UPDATE departments
SET department_id = 4
WHERE name = 'Management';

-- cheking
SELECT id, name, department_id
FROM departments;

DESCRIBE employees;
SELECT * FROM employees;

SELECT 
      e.name AS employee_name,
      e.salary,
      d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department = d.name;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS staff;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS teachers;

SHOW TABLES;

CREATE TABLE departments(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
)

INSERT INTO departments (name)
VALUES
    ('Software'),
    ('Finance'),
    ('HR'),
    ('Marketing'),
    ('Management');

SELECT * FROM departments;
CREATE Table employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    salary DECIMAL(10, 2),
    department_id INT,

    FOREIGN KEY (department_id)
        REFERENCES departments(id)
);

INSERT INTO employees
(name, email, salary, department_id)
VALUES
('Atul', 'atul@gmail.com', 900000, 1),
('Rahim', 'rahim@gmail.com', 38000, 3),
('Karim', 'karim@gmail.com', 52000, 2),
('Hasan', 'hasan@gmail.com', 42000, 1),
('Nabil', 'nabil@gmail.com', 35000, 4),
('Sakib', 'sakib@gmail.com', 60000, 5),
('Fahim', 'fahim@gmail.com', 48000, 1),
('Jamal', 'jamal@gmail.com', 40000, 2);

SELECT * FROM employees;

SELECT 
    e.name,
    d.name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id;
--alias
SELECT 
    e.name AS employee_name,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id;

SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id;

SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id
WHERE d.name = 'Software';

SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id
WHERE e.salary > 40000;

SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON e.department_id = d.id
WHERE e.salary > 40000
ORDER BY e.salary DESC;

-- JOIN + GROUP BY
SELECT
    d.name AS department,
    COUNT(e.id) AS total_employees
FROM departments d  
JOIN employees e 
ON d.id = e.department_id
GROUP BY d.id, d.name;

SELECT
    d.name AS department,
    AVG(e.salary) AS average_salary
FROM departments d 
JOIN employees e  
ON d.id = e.department_id
GROUP BY d.id, d.name;

SELECT
    d.name AS department,
    COUNT(e.id) AS total_employees,
    SUM(e.salary) AS total_salary,
    AVG(e.salary) AS average_salary,
    MAX(e.salary) AS highest_salary,
    MIN(e.salary) AS minimum_salary
FROM departments d 
JOIN employees e  
ON d.id = e.department_id
GROUP BY d.id, d.name;
--left join
INSERT INTO departments (name)
VALUES ('Research');

SELECT * FROM departments; --research ache kinto kono employee nai.
SELECT 
    d.name AS department,
    e.name AS employee
FROM departments d
JOIN employees e 
ON d.id = e.department_id; --research dekhabe na karon kono matching employee nai.

--left join
SELECT
    d.name AS department,
    e.name AS employee
FROM departments d
LEFT JOIN employees e 
ON d.id = e.department_id; --LEFT JOIN er kotha holo left table er sob row thakbe.

SELECT
    d.name AS department
FROM departments d 
LEFT JOIN employees e 
ON d.id = e.department_id
WHERE e.id IS NULL;


SELECT
    e.name AS employee_name,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON d.id = e.department_id
WHERE d.name = 'Software';

SELECT
    e.name AS employee_name,
    d.name AS employee_name
FROM employees e 
JOIN departments d 
ON d.id = e.department_id
WHERE salary > 40000 AND d.name = 'Finance';

SELECT d.name 
FROM departments d;

SELECT e.name 
FROM employees e
JOIN departments d 
ON d.id = e.department_id;

SELECT
    d.id AS department_id,
    d.name AS department_name,
    e.name AS employee_name,
    e.id AS employee_id,
    e.salary AS employee_salary,
    e.email AS employee_email
FROM employees e
LEFT JOIN departments d
ON d.id = e.department_id;

SELECT
    e.name AS employee_name,
    d.name AS department_name
FROM employees e 
JOIN departments d 
on e.department_id = d.id
WHERE d.name = 'Software'
ORDER BY e.salary DESC;

--task 1
SELECT
    e.name AS employee_name,
    d.name AS department_name
FROM departments d 
JOIN employees e 
ON d.id = e.department_id;

SELECT
    e.name AS employee_name,
    e.email,
    e.salary,
    d.name AS department_name
FROM departments d 
JOIN employees e 
ON d.id = e.department_id;

-- task 3
SELECT
    d.name AS department_name,
    e.name AS employee_name
FROM departments d 
JOIN employees e 
ON d.id = e.department_id
WHERE d.name = 'Finance';

--task 4
SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department
FROM employees e 
JOIN departments d 
ON d.id = e.department_id
WHERE e.salary BETWEEN 40000 AND 50000;

--task 5
SELECT
    e.name AS employee_name,
    d.name AS department_name,
    e.salary
FROM employees e 
JOIN departments d 
ON d.id = e.department_id
ORDER BY e.salary DESC;

--task 6
SELECT
    e.name AS employee_name,
    e.salary,
    d.name AS department_name
FROM employees e 
JOIN departments d 
ON d.id = e.department_id
WHERE d.name = 'Software' AND salary > 40000;


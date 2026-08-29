
DESC employees;
SELECT * FROM employees;

-- Task 1
INSERT INTO employees (name, email, salary, department)
VALUES
    ('Rahim', 'rahim@gmail.com', 35000, 'Software'),
    ('Karim', 'karim@gmail.com', 40000, 'HR'),
    ('Hassan', 'hasan@gmail.com', 38000, 'Finance'),
    ('Nabil', 'nabil@gmail.com', 50000, 'Management');

-- task 2
UPDATE employees
set department = 'Adminstration'
WHERE id = '6';

INSERT INTO employees (name, email, salary, department)
VALUES
('Atul',
'atul@gmail.com',
900000.39,
'CEO')

SELECT * FROM employees;

-- multiple rows insert

INSERT INTO employees (name, email, salary, department)
VALUES
    ('Anik Paul', 'anik@gmail.com', 500000.44, 'COO'),
    ('Ruma Rani Paul', 'ruma@.com', 400000.33, 'HR'),
    ('Rajat kumar paul', 'rajat.com', 700000.44, 'CFO');

SELECT * FROM employees;

INSERT INTO employees (name, salary, department)
VALUES
('Karim', 40000, 'Finance');
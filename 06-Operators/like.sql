
SELECT * FROM employees
WHERE name LIKE 'A%';

SELECT * FROM employees
WHERE name LIKE 'A_u_';

SELECT * FROM employees
WHERE name LIKE '_tul';

SELECT * FROM employees
WHERE email LIKE '%@gmail.com';

SELECT * FROM employees
WHERE name LIKE '%ni%';

SELECT * FROM employees
WHERE email IS NULL;

INSERT INTO employees (name, salary, department)
VALUES ('Jamil', 230000, 'support');
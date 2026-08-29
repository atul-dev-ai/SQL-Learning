UPDATE employees
SET salary = 110000
WHERE id = 1;

SELECT * FROM employees
WHERE id = 1;


UPDATE employees
SET salary = salary * 1.10
WHERE department = 'CEO';

SELECT * FROM employees;

SELECT * FROM employees
WHERE department = 'CEO';

UPDATE employees
SET salary = salary * 1.90
WHERE department = 'CEO'
AND salary < 150000;

UPDATE employees
SET salary = salary * 0.8
WHERE department = 'CEO';


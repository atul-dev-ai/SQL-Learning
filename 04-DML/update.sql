UPDATE employees
SET salary = 110000
WHERE id = 1;

SELECT * FROM employees
WHERE id = 1;


UPDATE employees
SET salary = salary * 1.10
WHERE department = 'CEO';

SELECT * FROM employees;
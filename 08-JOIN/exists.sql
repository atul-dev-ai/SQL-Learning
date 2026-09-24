-- Active: 1787999216968@@127.0.0.1@3306

SELECT
    d.id,
    d.name 
FROM departments d 
WHERE EXISTS (
    SELECT 1
    FROM employees e 
    WHERE e.department_id = d.id
);


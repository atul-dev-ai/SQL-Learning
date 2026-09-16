SELECT
    d.id,
    d.name 
FROM departments d 
WHERE EXISTS (
    SELECT 1
    FROM employees e 
    WHERE e.department_id = d.id
)
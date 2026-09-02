-- nijer department er average salary er cheye beshi salary jader, tader ber korte hobe.
SELECT
    e.name,
    e.salary,
    e.department_id
FROM employees e 
WHERE e.salary > (
    SELECT AVG(e2.salary)
    FROM employees e2
    WHERE e2.department_id = e.department_id
);
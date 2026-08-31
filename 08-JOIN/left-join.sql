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


SELECT department, COUNT(*)
FROM employees
GROUP BY department;

SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

SELECT
    department,
    AVG(salary) as average_salary
FROM employees
GROUP BY department;

SELECT department, SUM(salary) AS total_slry
FROM employees
GROUP BY department;

-- all aggregator
SELECT department,
                COUNT(*) AS total_employees,
                SUM(salary) AS total_slry,
                MIN(salary) AS minimum_salary,
                MAX(salary) AS maximum_salary
FROM employees
GROUP BY department;

-- group by + Order by
SELECT department,
                AVG(salary) AS average_salary
FROM employees 
GROUP BY department
ORDER BY average_salary DESC;

-- WHERE + GROUP BY
SELECT department,
                COUNT(*) AS total_employees
FROM employees
WHERE salary > 30000 AND salary < 100000
GROUP BY department;

--WHERE = GROUP korar age individual row filter kore.
--HAVING = GROUP korar pore group filter kore.
SELECT department,
        COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) >= 2;

--WHERE + HAVING
SELECT department,
COUNT(*) AS total_employees,
AVG(salary) AS average_salary
FROM employees
WHERE salary > 34000
GROUP BY department
HAVING COUNT(*) >= 2;

--HAVING AVG()
SELECT department,
            AVG(salary) as average_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;


SELECT department,
        COUNT(*) AS total_employees,
        AVG(salary) AS average_salary
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING count(*) >= 2
ORDER BY average_salary DESC
LIMIT 3;

DROP TABLE students;
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),

    class_name VARCHAR(30),
    section VARCHAR(10),
    roll_no INT,

    department VARCHAR(50),

    city VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(120),

    marks INT,

    monthly_fee DECIMAL(10, 2),
    admission_free DECIMAL(10, 2),
    admission_year INT,
    admission_date DATE
)

SELECT class_name, AVG(monthly_fee) AS average_fee
FROM students
GROUP BY class_name;

SELECT class_name, COUNT(*) AS total_students
FROM students
GROUP BY class_name
HAVING COUNT(*) > 4;

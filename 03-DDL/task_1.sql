
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL,
    salary DECIMAL(10, 3) NOT NULL,
    department VARCHAR(100) NOT NULL
)

ALTER TABLE employees
ADD COLUMN phone INT(13) NOT NULL;

ALTER TABLE employees
RENAME COLUMN department TO department_name;

ALTER TABLE employees
MODIFY COLUMN phone VARCHAR(20);

ALTER TABLE employees
ADD COLUMN joining_date DATE
AFTER salary;

DESC employees;

ALTER TABLE employees
RENAME to staff;

DESC staff;
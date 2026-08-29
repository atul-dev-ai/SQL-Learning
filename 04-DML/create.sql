
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150),
    salary DECIMAL(10, 2),
    department VARCHAR(100)
)

DESC employees;
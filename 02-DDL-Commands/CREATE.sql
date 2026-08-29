-- Active: 1787999216968@@127.0.0.1@3306@coachingmanagement
CREATE Table students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    department VARCHAR(100)
);

ALTER Table students
MODIFY age INT NOT NULL;

DESCRIBE students;

SHOW TABLES;
SHOW CREATE TABLE students;
PRIMARY KEY
ALTER TABLE students
MODIFY id INT NOT NULL AUTO_INCREMENT;

INSERT INTO students(name, age, department)
VALUES("Atul", 22, "CIS");

SHOW TABLES;

INSERT INTO students(name, age, department)
VALUES ('Rahim', 22, "CIS");

INSERT INTO students (name, age, department)
VALUES ('Karum', 21, 'EEE')

SELECT * FROM students;

SHOW DATABASES;

CREATE TABLE teachers (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENt,
    name VARCHAR(100),
    age INT,
    designation VARCHAR(100)
);

INSERT INTO teachers(name, age, designation)
VALUES ('Rahim', 29, 'English');
INSERT INTO teachers (name, age, designation)
VALUES ('Karim', 32, "Bangla");
DESCRIBE teachers;

SHOW TABLES;
SELECT * FROM teachers;



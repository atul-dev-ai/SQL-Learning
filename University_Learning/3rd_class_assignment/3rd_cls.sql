-- Active: 1787999216968@@127.0.0.1@3306@CIS22A
-- *Show table
-- *Describe table
CREATE DATABASE CIS22A;
USE CIS22A  
CREATE TABLE students (
    id VARCHAR(15) PRIMARY KEY,
    name VARCHAR(100),
    dept VARCHAR(50),
    gender VARCHAR(10),
    cgpa DECIMAL(3, 2),
);

SELECT * FROM students;

CREATE TABLE Courses (
    id VARCHAR(15),
    name VARCHAR(30),
    credit INT,
    dept VARCHAR(30),
    teacher VARCHAR(100),
    PRIMARY KEY(id)
);

---ekta database er under e ki ki table ache se sob show koranor jonno ei sql run kora hoy.
SHOW TABLES;

SELECT * FROM `Courses`;

DESCRIBE Courses;
ALTER TABLE students
ADD phone INT(15) AFTER email,
ADD address VARCHAR(60);

DESCRIBE students;
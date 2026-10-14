-- Active: 1787999216968@@127.0.0.1@3306@html5
SHOW DATABASES;

CREATE DATABASE html5;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
);

CREATE TABLE students (
    student_id VARCHAR(100) PRIMARY KEY,
    student VARCHAR(100),
    department VARCHAR(20),
    gender VARCHAR(10),
    cgpa DECIMAL(3, 2)
);

CREATE TABLE courses (
    course_id VARCHAR(10) PRIMARY KEY,
    course_name VARCHAR(30),
    credit int,
    department VARCHAR(10),
    teacher VARCHAR(30)
);

CREATE TABLE teachers (
    teacher_id VARCHAR(10) PRIMARY KEY,
    teacher_name VARCHAR(30),
    department VARCHAR(15),
    salary DECIMAL(10, 2),
    experience INT
);

CREATE TABLE enrollments (
    enroll_id INT PRIMARY KEY,
    student_id VARCHAR(10),
    course_id VARCHAR(10),
    semester_id VARCHAR(10),
    grade VARCHAR(5),
    Foreign Key (student_id) REFERENCES students(student_id),
    Foreign Key (course_id) REFERENCES courses(course_id)
)

DESCRIBE departments;
DESCRIBE courses;
DESCRIBE enrollments;
SELECT * FROM departments;

INSERT INTO departments (dept_id, dept_name)
VALUES 
(
    "D01",
    'SWE'
)

# change the data type

ALTER TABLE departments
MODIFY dept_id VARCHAR(20);
DESCRIBE departments;
SELECT * FROM departments;


-- Delete rows from 'TableName' where condition is met
DELETE FROM departments;
INSERT INTO departments (dept_id, dept_name)
VALUES 
(
    "D02",
    'CIS'
),
(
    "D03",
    "EEE"
),
(
    "D04",
    "CSE"
)

SELECT * FROM students;
DESCRIBE students;

INSERT INTO students (student_id, student, department, gender, cgpa)
VALUES
(
    'St01',
    'Atul Paul',
    'CIS',
    'Male',
    3.88
),
(
    "St02",
    "Aditiya Paul",
    "CIS",
    "Male",
    4.00
),
(
    "St03",
    "Shams Mohsin",
    "CIS",
    "Male",
    3.89
),
(
    "St04",
    "Shakira",
    "CIS",
    "Male",
    3.34
),
(
    "St05",
    "Salman Moqtadir",
    "SWE",
    "Male",
    3.55
);

DESCRIBE courses;
INSERT INTO courses (course_id, course_name, credit, department, teacher)
VALUES
(
    'c101',
    'DBMS',
    3,
    'CIS',
    'Ali'
),
(
    "c102",
    "DS",
    3,
    "SWE",
    "Rahman"
),
(
    "c103",
    "E-Commerce",
    3,
    "CIS",
    "Karim"
),
(
    "c104",
    "Khan",
    3,
    "EEE",
    "Salman Moqtadir"
);
SELECT * FROM courses;

DESCRIBE teachers;
INSERT INTO teachers (teacher_id, teacher_name, department, salary, experience)
VALUES
(
    "T101",
    "Mehedi Hasan",
    "CIS",
    70000,
    5
),
(
    "T102",
    "MD Israfil",
    "CIS",
    65000,
    4
),
(
    "T103",
    "Ali",
    "EEE",
    85000,
    9
),
(
    "T104",
    "Rahman",
    "MCT",
    62000,
    4
),
(
    "T105",
    "Salman Khan",
    "CSE",
    50000,
    3
),
(
    "T106",
    "Sifat",
    "CSE",
    99000,
    15
);
SELECT * FROM teachers;

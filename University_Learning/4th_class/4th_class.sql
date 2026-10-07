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


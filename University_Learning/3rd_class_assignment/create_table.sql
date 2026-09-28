-- Active: 1787999216968@@127.0.0.1@3306@atul
USE atul;
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    dept VARCHAR(20),
    gender VARCHAR(10),
    cgpa FLOAT
);
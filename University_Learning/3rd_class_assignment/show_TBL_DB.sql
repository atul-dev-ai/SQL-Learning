-- Active: 1787999216968@@127.0.0.1@3306@cis22

DESCRIBE students;
DESCRIBE courses;

SELECT * FROM students;

SELECT * FROM courses;

DESCRIBE student_courses;

SELECT * FROM student_courses;

SELECT
    student_id,
    course_id,
    COUNT(*) AS total
FROM student_courses
GROUP BY student_id, course_id
HAVING COUNT(*) >= 1;
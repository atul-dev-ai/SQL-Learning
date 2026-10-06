
INSERT INTO students (name, email, age)
VALUES
(
    'Atul Paul',
    '252-16-052@diu.edu.bd',
    21
),
(
    'Aditiya',
    '252-16-051@diu.edu.bd',
    9
),
(
    'Anik Paul',
    'anik@gmail.com',
    32
);

INSERT INTO courses (course_name, credit, dept_name)
VALUES
(
    'DBMS',
    3.0,
    'CIS'
),
(
    'Statistics',
    3.0,
    'CIS'
),
(
    'Finance',
    3.0,
    'CIS'
);

INSERT INTO student_courses (student_id, course_id)
VALUES
(
    1, 1
),
(
    1, 2
),
(
    2, 1
),
(
    3, 3
)
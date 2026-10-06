
CREATE TABLE student_courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,

    Foreign Key (student_id) REFERENCES students(id),

    Foreign Key (course_id) REFERENCES courses(id)
);


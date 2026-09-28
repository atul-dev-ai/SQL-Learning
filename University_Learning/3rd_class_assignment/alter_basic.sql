
ALTER TABLE students
ADD phone VARCHAR(15),
ADD address VARCHAR(100),
ADD email VARCHAR(100) AFTER phone;

DESCRIBE students;
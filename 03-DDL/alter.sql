ALTER TABLE courses
ADD description TEXT;

DESCRIBE courses;

ALTER TABLE courses
ADD department VARCHAR(100)
AFTER course_name;
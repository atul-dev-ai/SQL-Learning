
ALTER TABLE students ADD father_name VARCHAR(150);
ALTER TABLE students MODIFY father_name VARCHAR(100);

ALTER TABLE students DROP COLUMN father_name;
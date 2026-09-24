# 📚 Database Relationships

Understanding relationships is critical for designing databases for complex applications like ERPs or e-commerce systems.

## 1. One-to-One (1:1)
Both tables can have only one record on either side of the relationship.
- **Example:** A `User` has one `UserProfile`.
- **Implementation:** Put a Foreign Key in one of the tables (usually the dependent one), and add a `UNIQUE` constraint to it.

## 2. One-to-Many (1:N)
A record in Table A can have multiple matching records in Table B, but a record in Table B has only one matching record in Table A.
- **Example:** A `Department` has many `Employees`.
- **Implementation:** Place the Foreign Key on the "Many" side (e.g., put `department_id` in the `Employees` table).

## 3. Many-to-Many (M:N)
A record in Table A can have multiple matching records in Table B, and vice versa.
- **Example:** A `Student` takes many `Courses`, and a `Course` has many `Students`.
- **Implementation:** You must create a third table, known as a **Junction Table** (or Pivot Table, or Mapping Table). This table will hold the Foreign Keys of both tables.
  
```sql
-- Junction Table Example
CREATE TABLE student_courses (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),
    PRIMARY KEY (student_id, course_id)
);
```

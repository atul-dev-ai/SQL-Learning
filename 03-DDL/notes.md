# 📚 Data Definition Language (DDL)

DDL commands are used to define the database schema. They deal with descriptions of the database schema and are used to create and modify the structure of database objects in the database.

## 1. CREATE
Used to create a new database, table, index, or view.
```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);
```

## 2. ALTER
Used to modify an existing database object, like adding or dropping a column from a table.
```sql
-- Add a column
ALTER TABLE students ADD email VARCHAR(100);

-- Drop a column
ALTER TABLE students DROP COLUMN email;
```

## 3. DROP
Used to delete an entire database, table, index, or view. **Warning: This removes the structure and all its data.**
```sql
DROP TABLE students;
```

## 4. TRUNCATE
Used to remove all records from a table, but it keeps the table structure intact. It is usually much faster than `DELETE`.
```sql
TRUNCATE TABLE students;
```

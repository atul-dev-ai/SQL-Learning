# 📚 Data Manipulation Language (DML)

DML commands are used for managing data within schema objects. These commands allow you to add, modify, or remove data from a table.

## 1. INSERT
Used to add new rows of data to a table.
```sql
-- Insert a single row
INSERT INTO students (name, age) VALUES ('Alice', 22);

-- Insert multiple rows
INSERT INTO students (name, age) VALUES 
('Bob', 23),
('Charlie', 21);
```

## 2. UPDATE
Used to modify the existing records in a table. **Always use a `WHERE` clause; otherwise, all rows will be updated!**
```sql
-- Update a specific row
UPDATE students 
SET age = 24 
WHERE name = 'Alice';
```

## 3. DELETE
Used to delete existing records from a table. **Always use a `WHERE` clause; otherwise, all rows will be deleted!**
```sql
-- Delete a specific row
DELETE FROM students 
WHERE name = 'Charlie';
```

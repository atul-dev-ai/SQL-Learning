# 📚 Querying Data (SELECT)

The `SELECT` statement is the most commonly used command in SQL. It is used to fetch data from a database.

## 1. Basic SELECT
```sql
-- Select all columns
SELECT * FROM students;

-- Select specific columns
SELECT first_name, last_name FROM students;
```

## 2. Filtering with WHERE
The `WHERE` clause filters the result set to include only records that fulfill a specified condition.
```sql
SELECT * FROM students WHERE age = 20;
```

## 3. Sorting with ORDER BY
The `ORDER BY` keyword is used to sort the result set in ascending (`ASC`) or descending (`DESC`) order. (Default is `ASC`).
```sql
SELECT * FROM students ORDER BY age DESC;
```

## 4. Limiting Results
`LIMIT` is used to specify the number of records to return. `OFFSET` skips a specified number of rows before beginning to return rows (useful for pagination).
```sql
-- Get top 5 students
SELECT * FROM students LIMIT 5;

-- Skip the first 10, then get 5 (Page 3)
SELECT * FROM students LIMIT 5 OFFSET 10;
```

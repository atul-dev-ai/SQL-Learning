# 📚 SQL Functions

SQL has many built-in functions for performing calculations on data.

## 1. Aggregate Functions
These functions return a single value, calculated from values in a column.
- `COUNT()`: Returns the number of rows that matches a specified criterion.
- `SUM()`: Returns the total sum of a numeric column.
- `AVG()`: Returns the average value of a numeric column.
- `MIN()`: Returns the smallest value of the selected column.
- `MAX()`: Returns the largest value of the selected column.

```sql
SELECT COUNT(*) FROM employees WHERE department = 'IT';
SELECT AVG(salary) FROM employees;
```

## 2. String Functions
Used to manipulate string data.
- `UPPER(string)`: Converts a string to upper-case.
- `LOWER(string)`: Converts a string to lower-case.
- `LENGTH(string)`: Returns the length of a string.
- `CONCAT(string1, string2, ...)`: Adds two or more strings together.
- `SUBSTRING(string, start, length)`: Extracts a part of a string.

```sql
SELECT UPPER(first_name), LENGTH(last_name) FROM users;
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM users;
```

## 3. Date Functions
Functions like `NOW()`, `CURRENT_DATE`, `EXTRACT()` are highly dependent on your specific RDBMS (PostgreSQL, MySQL, SQL Server).

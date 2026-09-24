# 📚 Advanced SQL

Once you master basic querying, these advanced concepts will allow you to generate complex reports and analytics.

## 1. Subqueries
A subquery is a query nested inside another query (like `SELECT`, `INSERT`, `UPDATE`, or `DELETE`).
```sql
-- Find employees who earn more than the average salary
SELECT first_name, salary 
FROM employees 
WHERE salary > (SELECT AVG(salary) FROM employees);
```

## 2. Common Table Expressions (CTEs)
A CTE allows you to create a temporary result set that you can reference within a `SELECT`, `INSERT`, `UPDATE`, or `DELETE` statement. It makes complex queries much more readable.
```sql
WITH HighEarners AS (
    SELECT * FROM employees WHERE salary > 100000
)
SELECT * FROM HighEarners WHERE department = 'Sales';
```

## 3. Window Functions
Window functions perform calculations across a set of table rows that are somehow related to the current row. Unlike aggregate functions, they do not cause rows to become grouped into a single output row.
- **Examples:** `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`

```sql
-- Rank employees by salary within each department
SELECT 
    name, 
    department, 
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as dept_rank
FROM employees;
```

## 4. Views
A view is a virtual table based on the result-set of an SQL statement. It contains rows and columns, just like a real table.
```sql
CREATE VIEW ActiveCustomers AS
SELECT id, name FROM customers WHERE status = 'active';

-- You can now query it like a normal table
SELECT * FROM ActiveCustomers;
```

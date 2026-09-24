# 📚 SQL JOINs

A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them. This is the core power of Relational Databases.

## The 4 Main Types of JOINs

### 1. INNER JOIN
Returns records that have matching values in both tables. If a row in Table A doesn't have a match in Table B, it won't show up.
```sql
SELECT orders.id, customers.name 
FROM orders
INNER JOIN customers ON orders.customer_id = customers.id;
```

### 2. LEFT JOIN (or LEFT OUTER JOIN)
Returns all records from the left table (table1), and the matched records from the right table (table2). The result is NULL from the right side if there is no match.
```sql
SELECT customers.name, orders.id 
FROM customers
LEFT JOIN orders ON customers.id = orders.customer_id;
```
*(Shows all customers, even those who haven't placed an order yet.)*

### 3. RIGHT JOIN (or RIGHT OUTER JOIN)
Returns all records from the right table, and the matched records from the left table.

### 4. FULL JOIN (or FULL OUTER JOIN)
Returns all records when there is a match in either left or right table. Unmatched rows will contain NULLs for the other table's columns.

---
**Pro Tip:** Most of the time, `INNER JOIN` and `LEFT JOIN` are all you will need for standard application development.

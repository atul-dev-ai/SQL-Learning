# 📚 SQL Operators

Operators are reserved words or characters used primarily in an SQL statement's `WHERE` clause to perform operations, such as comparisons and arithmetic operations.

## 1. Comparison Operators
- `=`: Equal to
- `>`: Greater than
- `<`: Less than
- `>=`: Greater than or equal to
- `<=`: Less than or equal to
- `<>` or `!=`: Not equal to

## 2. Logical Operators
- `AND`: TRUE if all the conditions separated by AND are TRUE.
- `OR`: TRUE if any of the conditions separated by OR is TRUE.
- `NOT`: Displays a record if the condition(s) is NOT TRUE.

## 3. The BETWEEN Operator
Selects values within a given range. The values can be numbers, text, or dates. It is inclusive.
```sql
SELECT * FROM products WHERE price BETWEEN 10 AND 20;
```

## 4. The IN Operator
Allows you to specify multiple values in a `WHERE` clause. It is a shorthand for multiple `OR` conditions.
```sql
SELECT * FROM customers WHERE country IN ('Germany', 'France', 'UK');
```

## 5. The LIKE Operator
Used in a `WHERE` clause to search for a specified pattern in a column.
- `%`: Represents zero, one, or multiple characters.
- `_`: Represents a single character.

```sql
-- Starts with 'A'
SELECT * FROM students WHERE name LIKE 'A%';

-- Ends with 'a'
SELECT * FROM students WHERE name LIKE '%a';
```

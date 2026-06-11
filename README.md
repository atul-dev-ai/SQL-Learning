# 🚀 SQL Zero to Hero Roadmap

![SQL](https://img.shields.io/badge/Language-SQL-blue.svg) ![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791.svg) ![Status](https://img.shields.io/badge/Status-Learning-success.svg)

Welcome to the **SQL Zero to Hero Roadmap**! This repository is designed to take you from the absolute basics of databases to advanced queries and real-world database design. It contains a structured, phase-wise learning path complete with theoretical notes and practical SQL scripts.

---

## 📂 Repository Structure

The learning materials are divided into 18 systematic folders, culminating in 4 real-world projects:

```text
SQL-Learning/
├── 01-Database-Basics/      # Intro to DBs, Tables, Primary & Foreign Keys
├── 02-DDL-Commands/         # CREATE, ALTER, DROP, TRUNCATE
├── 03-DML-Commands/         # INSERT, UPDATE, DELETE
├── 04-Select-Queries/       # SELECT, WHERE, ORDER BY, LIMIT
├── 05-Operators/            # Comparison, Logical, BETWEEN, IN, LIKE
├── 06-Aggregate-Functions/  # COUNT, SUM, AVG, MIN, MAX
├── 07-GROUPING/             # GROUP BY, HAVING
├── 08-JOINS/                # INNER, LEFT, RIGHT, FULL, SELF
├── 09-Subquery/             # Single Row, Multiple Row, Correlated
├── 10-Set-Operations/       # UNION, INTERSECT, EXCEPT
├── 11-Database-Relationships/# 1:1, 1:N, N:M
├── 12-Constraints/          # PK, FK, UNIQUE, NOT NULL, CHECK
├── 13-Indexes/              # Single & Composite Indexes
├── 14-Views/                # Virtual Tables
├── 15-Transactions/         # BEGIN, COMMIT, ROLLBACK
├── 16-PostgreSQL/           # JSONB, UUID, ENUM, ARRAY, CTE, Window Functions
├── 17-Optimization/         # EXPLAIN, ANALYZE, Query Tuning
├── 18-Real-Projects/        # Capstone Projects (Library, Student, E-Commerce, ERP)
└── datasets/                # Sample datasets for practice
```

---

## 🗓️ Phase-Wise Learning Plan

Here is your structured learning roadmap to master SQL step-by-step:

### Phase 1: SQL Foundation (১ সপ্তাহ)
**শিখবে:**
- Database কী, Table কী
- Row, Column
- Primary Key, Foreign Key

**Practice:**
```sql
CREATE DATABASE school_db;
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
```

### Phase 2: CRUD Operations (১ সপ্তাহ)
**শিখবে:** `INSERT`, `SELECT`, `UPDATE`, `DELETE`

**Practice:**
```sql
INSERT INTO students(name) VALUES('Atul');
SELECT * FROM students;
```

### Phase 3: Filtering Data (১ সপ্তাহ)
**শিখবে:** `WHERE`, `LIKE`, `IN`, `BETWEEN`, `ORDER BY`, `LIMIT`

**Practice:**
```sql
SELECT * FROM students WHERE age > 18;
```

### Phase 4: Aggregate Functions (৩ দিন)
**শিখবে:** `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`

**Practice:**
```sql
SELECT AVG(gpa) FROM students;
```

### Phase 5: GROUP BY & HAVING (৩ দিন)
**Practice:**
```sql
SELECT department, COUNT(*)
FROM students
GROUP BY department;
```

### Phase 6: JOINS (সবচেয়ে গুরুত্বপূর্ণ)
**শিখবে:** `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, `FULL JOIN`

**Practice:**
```sql
SELECT s.name, d.department_name
FROM students s
INNER JOIN departments d ON s.department_id = d.id;
```

### Phase 7: Relationships
**শিখবে:** One To One, One To Many, Many To Many
> 💡 **Pro Tip:** *এটা BrainCampus-এর মতো Project-এর জন্য খুব গুরুত্বপূর্ণ।*

### Phase 8: Advanced SQL
**শিখবে:** Subquery, CTE, Window Functions, Views

### Phase 9: PostgreSQL Mastery
**শিখবে:** JSONB, UUID, ENUM, ARRAY, Triggers, Functions
> 💡 **Pro Tip:** *BrainCampus-এর মতো Multi-Tenant System-এ এগুলো অনেক কাজে লাগবে।*

### Phase 10: Database Optimization
**শিখবে:** Index, Explain, Analyze, Query Optimization
> ⚠️ **Note:** *১ লাখ Student হলে Query Slow কেন হচ্ছে সেটা বুঝতে এই ফেজটি জরুরি।*

### Phase 11: Real Project Database Design
এই ৪টা Project Database নিজে Design করবে:
1. Student Management System
2. Library Management System
3. E-Commerce Database
4. School ERP Database

**শেষে School ERP Database-এ যে বিষয়গুলো থাকবে:**
Schools, Sessions, Semesters, Students, Teachers, Results, Attendance, Fees, Exams.

---

Happy Querying! 🎉

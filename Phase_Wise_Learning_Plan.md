# Phase Wise Learning Plan

## Phase 1: SQL Foundation (১ সপ্তাহ)

**শিখবে:**
- Database কী
- Table কী
- Row, Column
- Primary Key
- Foreign Key

**Practice:**
```sql
CREATE DATABASE school_db;
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
```

## Phase 2: CRUD Operations (১ সপ্তাহ)

**শিখবে:**
- INSERT
- SELECT
- UPDATE
- DELETE

**Practice:**
```sql
INSERT INTO students(name)
VALUES('Atul');
SELECT * FROM students;
```

## Phase 3: Filtering Data (১ সপ্তাহ)

**শিখবে:**
- WHERE
- LIKE
- IN
- BETWEEN
- ORDER BY
- LIMIT

**Example:**
```sql
SELECT *
FROM students
WHERE age > 18;
```

## Phase 4: Aggregate Functions (৩ দিন)

**শিখবে:**
- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

**Example:**
```sql
SELECT AVG(gpa)
FROM students;
```

## Phase 5: GROUP BY & HAVING (৩ দিন)

**Example:**
```sql
SELECT department,
COUNT(*)
FROM students
GROUP BY department;
```

## Phase 6: JOINS (সবচেয়ে গুরুত্বপূর্ণ)

**শিখবে:**
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- FULL JOIN

**Example:**
```sql
SELECT s.name,
       d.department_name
FROM students s
INNER JOIN departments d
ON s.department_id = d.id;
```

## Phase 7: Relationships

**শিখবে:**
- One To One
- One To Many
- Many To Many

*এটা BrainCampus-এর মতো Project-এর জন্য খুব গুরুত্বপূর্ণ।*

## Phase 8: Advanced SQL

**শিখবে:**
- Subquery
- CTE
- Window Functions
- Views

## Phase 9: PostgreSQL Mastery

**শিখবে:**
- JSONB
- UUID
- ENUM
- ARRAY
- Triggers
- Functions

*BrainCampus-এর মতো Multi-Tenant System-এ এগুলো অনেক কাজে লাগবে।*

## Phase 10: Database Optimization

**শিখবে:**
- Index
- Explain
- Analyze
- Query Optimization

*কারণ ১ লাখ Student হলে Query Slow কেন হচ্ছে সেটা বুঝতে হবে।*

## Phase 11: Real Project Database Design

**এই ৪টা Project Database নিজে Design করবে:**
1. Student Management System
2. Library Management System
3. E-Commerce Database
4. School ERP Database

**শেষে School ERP Database-এ:**
- Schools
- Sessions
- Semesters
- Students
- Teachers
- Results
- Attendance
- Fees
- Exams

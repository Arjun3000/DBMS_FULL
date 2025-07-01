# Day 1: Introduction to DBMS and SQL

## 📘 What is a DBMS?
A **Database Management System (DBMS)** is software that enables users to store, manage, and retrieve data efficiently.
It ensures data integrity, security, and supports multi-user environments.

### Examples:
- DBMS: XML DB, File System
- RDBMS (Relational DBMS): MySQL, Oracle, PostgreSQL

## 🔁 DBMS vs RDBMS

| Feature            | DBMS                   | RDBMS                  |
|--------------------|------------------------|------------------------|
| Data Structure     | File-based, hierarchical | Table-based (rows & columns) |
| Relationships      | ❌ Not supported         | ✅ Supported           |
| Normalization      | ❌ Not required          | ✅ Enforced            |
| Examples           | XML, JSON storage       | MySQL, PostgreSQL      |
| Security           | Basic                   | Advanced               |

## 🧠 Key Terms
- **Table**: Collection of related data in rows and columns.
- **Record (Row)**: A single entry in a table.
- **Field (Column)**: A specific attribute of the data.
- **Primary Key**: Unique identifier for records.
- **Auto Increment**: Automatically increases numeric values (IDs).

## 🧾 SQL Practice

### Create a Database and Table
```sql
CREATE DATABASE dbms_course;
USE dbms_course;

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## 🛡️ Cybersecurity Use-Case: SQL Injection

### Vulnerable Query
```sql
SELECT * FROM users WHERE username = 'admin' AND password = '123';
```

### Attacker Input
```
username: admin' --
password: anything
```

### Final Query (after injection)
```sql
SELECT * FROM users WHERE username = 'admin' --' AND password = 'anything';
```

**Impact**: Bypasses authentication by commenting out password condition.

## 🧠 Self-Check Q&A
1. What is the difference between DBMS and RDBMS?
2. Why is `AUTO_INCREMENT` useful?
3. What kind of cyber attack is SQL Injection?
4. Why should you use `PRIMARY KEY` in a table?

---

✅ End of Day 1 — Push this file to your GitHub repo under `Notes/Day1_Intro_to_DBMS.md`
# DBMS Flash Notes for Cybersecurity and Dataset Projects

## ✅ 1. DBMS Basics

- DBMS: Software that manages data efficiently.
- RDBMS: Stores data in **tables (relations)**.
- Examples: MySQL, PostgreSQL, Oracle.

---

## ✅ 2. Data Models

- **Relational Model**: Data stored in rows & columns.
- Uses **primary keys**, **foreign keys**, and **constraints**.

---

## ✅ 3. Entity-Relationship (ER) Modeling

- Diagrammatic way to model entities and relationships.
- Components:
  - **Entities**: Represent tables (e.g., Users).
  - **Attributes**: Columns in a table.
  - **Relationships**: Links between entities (e.g., Users → LoginLogs).
- Used to design normalized and secure schemas.

---

## ✅ 4. Normalization (1NF to 3NF)

### 1NF:

- Atomic values only.
- No repeating groups or arrays.

### 2NF:

- In 1NF.
- No partial dependencies (non-key depends on part of composite key).

### 3NF:

- In 2NF.
- No transitive dependencies (non-key depends on non-key).

Purpose: Eliminate redundancy, improve data integrity, and prepare clean datasets.

---

## ✅ 5. SQL Overview

### DDL:

```sql
CREATE, ALTER, DROP TABLE;
```

### DML:

```sql
SELECT, INSERT, UPDATE, DELETE;
```

### DCL:

```sql
GRANT, REVOKE;
```

### TCL:

```sql
COMMIT, ROLLBACK, SAVEPOINT;
```

Used to manage, manipulate, and control data securely.

---

## ✅ 6. Constraints

- **Primary Key (PK)**: Uniquely identifies a row.
- **Foreign Key (FK)**: References PK from another table.
- **Unique**: Ensures all values are different.
- **Check**: Restricts value range.

---

## ✅ 7. Indexing

- Improves query performance.
- Common types: **Single-level**, **Multi-level**, **B-Tree**, **Hashing**.

---

## ✅ 8. Transactions & ACID

- **Atomicity**: All or nothing.
- **Consistency**: Valid state before and after transaction.
- **Isolation**: Concurrent transactions don't interfere.
- **Durability**: Changes persist even after failure.

Important for safe rollback and auditing in cybersecurity scenarios.

---

## ✅ 9. Concurrency Control

- Handles simultaneous transactions.
- Techniques: **Locking**, **Timestamps**, **Deadlock prevention**.
- Critical for multi-user secure systems.

---

## ✅ 10. Project: Vulnerable Login System

- Simple DB with `Users(user_id, username, password)`.
- Login script vulnerable to SQLi for testing.
- ERD created.
- Dataset clean and normalized.
- Can be used to test:
  - SQL injection
  - Brute force attacks
  - Logging failed/successful login attempts

---

## ✅ Summary

These DBMS concepts were covered with a focus on:

- Security-aware schema design
- Clean dataset preparation
- Foundations for backend security tools like login systems, access control, and anomaly detection


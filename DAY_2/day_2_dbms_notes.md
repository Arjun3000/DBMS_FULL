# 📘 DBMS – Day 2 Notes

## ✅ Topics Covered

- SQL Data Types
- SELECT Queries
- Conditional Statements: WHERE, AND, OR, IN, BETWEEN
- ORDER BY and LIMIT
- Cybersecurity Relevance

---

## 1⃣ SQL Data Types

### 📦 Common MySQL Data Types

| Category | Data Type | Description |
| -------- | --------- | ----------- |
|          |           |             |

| **Numeric**   | `INT`, `FLOAT`, `DECIMAL(p,s)`  | Numbers (integers, decimals)   |
| ------------- | ------------------------------- | ------------------------------ |
| **String**    | `VARCHAR(n)`, `CHAR(n)`, `TEXT` | Text values of different sizes |
| **Date/Time** | `DATE`, `DATETIME`, `TIMESTAMP` | Date/time tracking             |
| **Boolean**   | `BOOLEAN`, `TINYINT(1)`         | True (1) / False (0) values    |

> ✅ Always choose specific data types to save storage and improve query performance.

---

## 2⃣ SELECT Queries

### 🔹 Basic Query

```sql
SELECT * FROM employees;
SELECT name, salary FROM employees;
```

### 🔹 Filtering with WHERE

```sql
SELECT * FROM employees
WHERE is_active = true;
```

---

## 3⃣ Conditional Operators

| Operator  | Purpose                             | Example                                     |
| --------- | ----------------------------------- | ------------------------------------------- |
| `AND`     | All conditions must be true         | `WHERE salary > 50000 AND is_active = true` |
| `OR`      | At least one condition must be true | `WHERE name = 'ARJUN' OR name = 'VIRAT'`    |
| `IN`      | Match any value in list             | `WHERE name IN ('ARJUN', 'VIRAT')`          |
| `BETWEEN` | Match a range (inclusive)           | `WHERE salary BETWEEN 20000 AND 80000`      |

---

## 4⃣ ORDER BY and LIMIT

### 🔹 Sorting

```sql
SELECT * FROM employees
ORDER BY salary ASC, join_date DESC;
```

### 🔹 Limiting Results

```sql
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 2;
```

---

## 🔑 Cybersecurity Fun Facts (Day 2)

- Using proper **data types** reduces the attack surface for **SQL Injection**
- `WHERE` filters ensure **least-privilege data access**
- `LIMIT` prevents **data dumping** through APIs or internal tools

---

## ✅ Practice Table Used

```sql
CREATE TABLE employees (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  salary DECIMAL(10,2),
  join_date DATE,
  is_active BOOLEAN
);

INSERT INTO employees (name, salary, join_date, is_active) VALUES
('ARJUN SHARMA', 120000.00, '2026-04-01', true),
('BROCK LESNAR', 10000.00, '2022-01-09', false),
('ROMAN REINGS', 78000.00, '2021-08-07', false),
('VIRAT KOHLI', 20000.00, '2020-09-01', true);
```

---

## 🧠 Summary

You're now confident in:

- Retrieving and filtering data using `SELECT`, `WHERE`
- Using logical conditions to fine-tune results
- Sorting and controlling result sets using `ORDER BY`, `LIMIT`

---

✅ Ready for Day 3: `UPDATE`, `DELETE`, and **Constraints** (`NOT NULL`, `DEFAULT`, `CHECK`, `FOREIGN KEY`)


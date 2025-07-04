
# 📘 DBMS + SQL Course: Day 4 Notes

**Date:** July 04, 2025

---

## 🔐 Cybersecurity Fun Fact of the Day

**"The most common attack vector in data breaches is SQL injection."**  
Understanding how `FOREIGN KEY`, `CHECK`, and `DEFAULT` constraints work is **crucial** in cybersecurity because:
- They enforce **data integrity**.
- Prevent insertion of malicious or unexpected values.
- Make it easier to **audit and validate logs** and **identify tampering** in relational databases.

🎯 *For example: a weakly validated `movie` field could be exploited to inject SQL. But a CHECK + NOT NULL + type restriction makes it much harder for an attacker.*

---

## ✅ Topics Covered on Day 4

### 🔸 PRIMARY KEY
- Ensures each row has a **unique identity**
- Only one per table, **NOT NULL**

### 🔸 UNIQUE Constraint
- Ensures all values in a column are **distinct**
- Allows one NULL (unless NOT NULL is applied too)

### 🔸 NOT NULL
- Prevents missing or null values in a column

### 🔸 FOREIGN KEY
- Links two tables together
- Enforces referential integrity
- Example used: `actors.g_id` → `genere.g_id`

### 🔸 DEFAULT Constraint
- Sets a default value when none is provided
- Example: `course VARCHAR(50) DEFAULT 'B.Tech'`

### 🔸 CHECK Constraint
- Validates data using conditions
- Example: `CHECK (movie >= 1)` to ensure every actor has at least one movie

---

## 🧪 Practice Queries Recap

```sql
-- Creating genere table
CREATE TABLE genere (
  g_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) UNIQUE
);

-- Creating actors table with FOREIGN KEY and CHECK
CREATE TABLE actors (
  actor_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) UNIQUE,
  movie DECIMAL NOT NULL CHECK (movie >= 1),
  g_id INT,
  FOREIGN KEY (g_id) REFERENCES genere(g_id)
);

-- Insert data
INSERT INTO genere(name) VALUES ('horror'), ('comedy'), ('emotional');
INSERT INTO actors(name, movie, g_id) VALUES ('arjun', 12, 1), ('bharat', 10, 2);

-- Join query to fetch genre name
SELECT
  actors.actor_id,
  actors.name AS actor_name,
  actors.movie AS movie_count,
  genere.name AS genre_name
FROM 
  actors
JOIN 
  genere ON actors.g_id = genere.g_id;
```

---

## 🧠 Key Takeaways

- Constraints make your data **clean**, **safe**, and **tamper-resistant**.
- SQL with constraints is more secure, structured, and reliable.
- This is foundational for **defensive database programming** in cybersecurity.

---

Prepared for: **Arjun Sharma**

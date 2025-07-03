# 📘 DBMS + SQL Course – Day 3 Notes

## ✅ Topics Covered

### 🔹 1. Aggregate Functions

Aggregate functions operate on multiple rows and return a single value.

| Function   | Description              |
|------------|--------------------------|
| `COUNT()`  | Counts rows              |
| `SUM()`    | Sums up a numeric column |
| `AVG()`    | Returns average value    |
| `MAX()`    | Returns maximum value    |
| `MIN()`    | Returns minimum value    |

**Examples:**
```sql
SELECT COUNT(*) FROM batter;
SELECT AVG(runs) FROM batter;
SELECT MAX(runs) FROM batter;
SELECT MIN(age) FROM batter;
```

---

### 🔹 2. GROUP BY Clause

Used to group rows with the same values in specified columns.

**Example:**
```sql
SELECT isactive, COUNT(*) AS player_count
FROM batter
GROUP BY isactive;
```

---

### 🔹 3. HAVING Clause

Filters groups based on conditions (used with GROUP BY).

**Example:**
```sql
SELECT isactive, MAX(runs) AS max_runs
FROM batter
GROUP BY isactive
HAVING MIN(age) < 37;
```

---

### 🔹 4. Aliasing (AS)

Used to rename columns or tables for better readability.

**Example:**
```sql
SELECT name AS 'Player Name', runs AS 'Career Runs'
FROM batter;
```

---

## 👨‍💻 Security Fun Fact

- **GROUP BY + Aggregate Functions** are widely used in **SIEM (Security Information and Event Management)** systems.
- Help in identifying:
  - Most frequent IPs
  - Suspicious user login patterns
  - Anomalies in system activity (e.g., brute-force attacks)
- Aliasing makes query results easier to understand when reviewing logs or reports.

---

## ✅ Tasks Completed

- Created and modified `batter` table
- Used `DEFAULT` and `CHECK` constraints
- Practiced:
  - Aggregate functions
  - GROUP BY & HAVING clauses
  - Column aliasing with `AS`
- Verified how CHECK prevents invalid data from being added

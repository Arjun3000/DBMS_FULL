# DBMS Day 5 – Core Theory Notes

## 1. Data Models

| Model           | Description                         | Real-World Examples          |
| --------------- | ----------------------------------- | ---------------------------- |
| Hierarchical    | Tree-like structure, parent-child   | Linux filesystem, XML, LDAP  |
| Network         | Graph-like, many-to-many            | Telecom DB, Flight booking   |
| Relational      | Tables (relations), uses SQL        | MySQL, PostgreSQL, Analytics |
| Object-Oriented | Class-based, complex object support | GIS, CAD, Multimedia systems |

---

## 2. Schema vs Instance

- **Schema**: Blueprint/structure (static)
- **Instance**: Actual data in the database (dynamic)
- ✅ Analogy: Schema = Class, Instance = Object

---

## 3. DBMS Architecture

| Tier   | Description                        | Example                           |
| ------ | ---------------------------------- | --------------------------------- |
| 1-Tier | DBMS and interface on same machine | MySQL Workbench on local PC       |
| 2-Tier | UI and DBMS on separate systems    | Login page connected to MySQL     |
| 3-Tier | UI, App server, and DB separately  | Facebook, Amazon, Banking systems |

---

## 4. Data Independence

| Type                  | What It Allows                                   | Example                                   |
| --------------------- | ------------------------------------------------ | ----------------------------------------- |
| Logical Independence  | Change table schema without affecting views      | Adding a column won't break frontend apps |
| Physical Independence | Change storage/indexing without affecting schema | Move from HDD to SSD, indexing strategy   |

---

## 5. Data Dictionary

- Stores **metadata** (data about data)
- Includes table names, columns, types, keys, access permissions
- Helps enforce **data integrity**, relationships, and constraints

---

## 6. SQL Language Types

| Type | Full Form                    | Purpose             | Examples                               |
| ---- | ---------------------------- | ------------------- | -------------------------------------- |
| DDL  | Data Definition Language     | Define schema       | `CREATE`, `ALTER`, `DROP`, `TRUNCATE`  |
| DML  | Data Manipulation Language   | Modify data         | `INSERT`, `UPDATE`, `DELETE`, `SELECT` |
| DCL  | Data Control Language        | Manage access       | `GRANT`, `REVOKE`                      |
| TCL  | Transaction Control Language | Manage transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT`      |

---

## 7. ER Diagrams – Basics

- **Entity (Rectangle)** – Real-world object (e.g., Student, Teacher)
- **Relationship (Diamond)** – Action between entities (e.g., attends, issues)
- **Attribute (Ellipse)** – Property of an entity (e.g., Name, Roll No)
- **Derived Attribute** – From other fields (e.g., Age from DOB)
- **Weak Entity (Double Rectangle)** – Depends on another entity

✅ ERP Example ERD:

- `Student` issues `Book` from `Library`
- `Teacher` conducts `Exam`
- `Student` pays `Fees` to `Finance`

---

##


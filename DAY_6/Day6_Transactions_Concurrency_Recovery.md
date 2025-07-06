
# Day 6 – Transactions, Concurrency & Recovery in DBMS

---

## ✅ 1. What is a Transaction?

A **transaction** is a sequence of one or more SQL operations (like SELECT, INSERT, UPDATE, DELETE) performed as a **single logical unit of work**.

- Ensures **data integrity**
- Can involve one or multiple tables
- Must be either **fully completed** or **fully rolled back**

### 💡 Example:
```sql
START TRANSACTION;
UPDATE account SET balance = balance - 1000 WHERE acc_no = 'A';
UPDATE account SET balance = balance + 1000 WHERE acc_no = 'B';
COMMIT;
```

---

## ✅ 2. ACID Properties of Transactions

| Property | Description |
|----------|-------------|
| **Atomicity** | All steps of the transaction must happen or none. |
| **Consistency** | DB moves from one valid state to another. |
| **Isolation** | Transactions must not interfere with each other. |
| **Durability** | Once committed, changes are permanent. |

---

## ✅ 3. Transaction States

```
[Active] → [Partially Committed] → [Committed]
   ↓                ↓
 [Failed] ←—— [Aborted]
```

- **Active**: Transaction is running
- **Partially Committed**: All operations done, waiting to commit
- **Committed**: Transaction is successfully saved
- **Failed**: An error occurred
- **Aborted**: Rolled back to initial state

---

## ✅ 4. Concurrency Problems

| Problem | Description |
|---------|-------------|
| **Lost Update** | Updates from one transaction overwrite the other's. |
| **Dirty Read** | Reading uncommitted data from another transaction. |
| **Unrepeatable Read** | Same query gives different results in one transaction. |
| **Phantom Read** | New rows appear in repeated queries due to another transaction. |

---

## ✅ 5. Concurrency Control Techniques

### 🔒 Lock-Based Protocols
- **Shared Lock (S)** → Read only
- **Exclusive Lock (X)** → Read + Write
- **Two-Phase Locking (2PL)**:
  - Growing phase: Acquire locks
  - Shrinking phase: Release locks

### ⏳ Timestamp-Based Protocol
- Each transaction gets a timestamp.
- Older transactions get priority.

### ✅ Optimistic Concurrency Control
- No locks initially
- Validation phase checks for conflict

---

## ✅ 6. Deadlock and Recovery

### 🔁 What is Deadlock?
When two or more transactions **wait forever** for each other to release locks.

### 🔧 Deadlock Handling Techniques

#### 1. **Prevention**
- Wait-Die: Older waits, younger aborts
- Wound-Wait: Older aborts younger

#### 2. **Detection**
- Use **Wait-For Graph**
- If cycle exists → deadlock present

#### 3. **Recovery**
- Abort one or more transactions
- Release their locks
- Restart if needed

---

## ✅ Summary

- Transactions group multiple SQL operations
- ACID ensures safe and reliable execution
- Concurrency introduces conflicts like dirty reads
- Locking, timestamps, and deadlock control protect data

---

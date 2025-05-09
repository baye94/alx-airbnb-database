# Database Normalization – AirBnB Schema

## 🎯 Objective

Ensure the relational schema is fully normalized to **Third Normal Form (3NF)** — eliminating redundancy, ensuring dependency on the key, the whole key, and nothing but the key.

---

## 1. First Normal Form (1NF)

### ✅ Criteria:
- Atomic values (no repeating groups or arrays)
- Unique column names
- Unique records

### ✔ Status:
All tables use **atomic fields** (e.g., no lists or multiple values in one column). Each attribute holds one value per row.

✅ All entities (User, Property, Booking, Payment, Review, Message) satisfy **1NF**.

---

## 2. Second Normal Form (2NF)

### ✅ Criteria:
- Must be in 1NF
- No partial dependencies on a composite primary key

### ✔ Status:
All tables use **single-column primary keys (UUIDs)** → no composite keys.
Thus, there are no **partial dependencies**.

✅ All entities satisfy **2NF**.

---

## 3. Third Normal Form (3NF)

### ✅ Criteria:
- Must be in 2NF
- No transitive dependencies (non-key attributes depending on other non-key attributes)

---

### 🔍 Review for Transitive Dependencies

#### 📌 User
- `role` is atomic and depends on the primary key
✅ OK

#### 📌 Property
- `host_id` → refers to User
- No derived fields (like host name or email stored redundantly)
✅ OK

#### 📌 Booking
- All fields depend solely on `booking_id`
✅ OK

#### 📌 Payment
- All attributes are directly dependent on `payment_id`
✅ OK

#### 📌 Review
- No indirect dependencies (e.g., property name or user email are **not** stored)
✅ OK

#### 📌 Message
- No transitive dependencies between sender/recipient and message content
✅ OK

---

## ✅ Final Assessment

**All tables are in 3NF**:
- No redundancy
- All non-key attributes depend only on the primary key
- No derived or denormalized data

---

## 📌 Conclusion

The AirBnB schema is fully normalized to **Third Normal Form (3NF)**. No structural changes were needed.

If performance issues arise in reporting or querying, **denormalization strategies (materialized views or caching)** can be applied later without compromising data integrity.

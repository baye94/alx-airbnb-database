# AirBnB – Database Design and Normalization

## 📘 Overview

This project defines the core **relational schema** for a simplified AirBnB platform, including users, properties, bookings, payments, reviews, and messaging.

It includes:
- ✅ Entity-Relationship Diagram (ERD)
- ✅ SQL Schema (in 3rd Normal Form)
- ✅ Normalization explanation

---

## 📦 Entities & Relationships

### Entities
- **User**: Guests, hosts, and admins
- **Property**: Rental properties posted by hosts
- **Booking**: Reservations made by users
- **Payment**: Payments tied to bookings
- **Review**: Feedback left by users on properties
- **Message**: Direct messages between users

### Relationships
- One **User** can create many **Properties**
- One **User** can book many **Properties**
- One **Booking** has one **Payment**
- One **User** can leave multiple **Reviews**
- **Messages** are sent from one **User** to another

---

## 🧠 Normalization (Up to 3NF)

All tables are normalized to **Third Normal Form (3NF)**:
- No repeating groups or multi-valued fields (1NF)
- All non-key attributes fully dependent on the primary key (2NF)
- No transitive dependencies (3NF)

➡ See [normalization.md](./normalization.md) for full reasoning.

---

## 🗂️ Files

| File                       | Description                                      |
|----------------------------|--------------------------------------------------|
| `erd.png`                  | Visual ER diagram of the database                |
| `schema.sql`               | SQL script to create all tables and constraints  |
| `normalization.md`         | Detailed steps explaining the 3NF normalization  |
| `README.md`                | Project documentation                            |

---

## 🧪 Setup Instructions

1. Load the database schema:
   ```bash
   psql -U your_user -d airbnb_db -f schema.sql

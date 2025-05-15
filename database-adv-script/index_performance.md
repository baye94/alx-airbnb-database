# 🧠 Index Performance Report – ALX Airbnb Database

## 🎯 Objective

Improve query performance by identifying high-usage columns and creating appropriate indexes. Measure the before/after performance using `EXPLAIN` or `ANALYZE`.

---

## 🔍 High-Usage Columns Identified

| Table       | Column        | Justification                              |
|-------------|---------------|---------------------------------------------|
| `bookings`  | `user_id`     | Frequently used in JOINs, `GROUP BY`, `WHERE` |
| `bookings`  | `property_id` | Used for `GROUP BY`, `JOIN`, ranking        |
| `reviews`   | `property_id` | JOIN with `properties`, counting reviews    |
| `users`     | `id`          | JOIN key (often primary but reinforced)     |
| `properties`| `id`          | JOIN key with `bookings`, `reviews`         |

---

## 🛠️ Indexes Created (in `database_index.sql`)

```sql
-- Bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);

-- Users & Properties (if not already primary keys)
CREATE INDEX idx_users_id ON users(id);
CREATE INDEX idx_properties_id ON properties(id);

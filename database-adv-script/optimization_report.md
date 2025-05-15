## Query Optimization Report

### Original Query Overview

**Query:**
Retrieved all bookings with full user, property, and payment details.

**Performance:**
- Execution Time: 92.4 ms
- Issues: Sequential scans, unnecessary fields retrieved, joins with wide rows

---

### Identified Inefficiencies

1. No indexes on `bookings.user_id`, `bookings.property_id`, `payments.booking_id`
2. SELECTed columns that were not required (e.g., user email, full property details)
3. Wide table joins with no filtering

---

### Optimizations Performed

- Added indexes (see `database_index.sql`)
- Reduced number of columns in SELECT
- Kept necessary `LEFT JOIN` for payments only
- Ensured JOINs use indexed columns

---

### Optimized Query Performance

- Execution Time: 12.6 ms
- Index Scans used on all joins
- ~86% reduction in query time

---

### Conclusion

By reducing the SELECTed columns and ensuring proper indexing, the query performance improved significantly.

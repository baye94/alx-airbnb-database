## Booking Table Partitioning Performance Report

### Objective

To improve query performance on the large `bookings` table by implementing **range partitioning** based on the `start_date` column.

---

### Implementation

- Replaced the original `bookings` table with a new partitioned table.
- Created monthly partitions for Q1 2023 (`bookings_2023_01`, `bookings_2023_02`, `bookings_2023_03`).
- Migrated data from the old table to the new partitions.

---

### Query Tested

```sql
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-02-01' AND '2023-02-28';

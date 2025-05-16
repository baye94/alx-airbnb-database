# Performance Monitoring and Optimization

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Analyzed Queries

### 1. User bookings

```sql
SELECT * FROM Booking WHERE user_id = 42 ORDER BY created_at DESC;

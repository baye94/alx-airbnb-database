-- Step 1: Rename original bookings table
ALTER TABLE bookings RENAME TO bookings_old;

-- Step 2: Create new partitioned bookings table
CREATE TABLE bookings (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    CONSTRAINT bookings_user_fk FOREIGN KEY (user_id) REFERENCES users(id),
    CONSTRAINT bookings_property_fk FOREIGN KEY (property_id) REFERENCES properties(id)
) PARTITION BY RANGE (start_date);

-- Step 3: Create monthly partitions (example for 2023 Q1)
CREATE TABLE bookings_2023_01 PARTITION OF bookings
    FOR VALUES FROM ('2023-01-01') TO ('2023-02-01');

CREATE TABLE bookings_2023_02 PARTITION OF bookings
    FOR VALUES FROM ('2023-02-01') TO ('2023-03-01');

CREATE TABLE bookings_2023_03 PARTITION OF bookings
    FOR VALUES FROM ('2023-03-01') TO ('2023-04-01');

-- Step 4: Copy data from old table to new partitioned table
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, created_at)
SELECT id, user_id, property_id, start_date, end_date, created_at FROM bookings_old
WHERE start_date >= '2023-01-01' AND start_date < '2023-04-01';

-- Step 5: Optional - Drop old table if verified
-- DROP TABLE bookings_old;


-- Query to test performance
EXPLAIN ANALYZE
SELECT * FROM bookings
WHERE start_date BETWEEN '2023-02-01' AND '2023-02-28';

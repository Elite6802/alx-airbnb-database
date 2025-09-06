-- ===========================================
-- Partitioning the Booking table by start_date
-- ===========================================

-- Step 1: Create a new partitioned table
CREATE TABLE Booking_Partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions (example by year)
CREATE TABLE Booking_2024 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE Booking_2026 PARTITION OF Booking_Partitioned
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Step 3: Insert existing data from Booking into partitioned table
INSERT INTO Booking_Partitioned (id, user_id, property_id, start_date, end_date)
SELECT id, user_id, property_id, start_date, end_date
FROM Booking;

-- Step 4: Verify data in partitions
SELECT * FROM Booking_2025 LIMIT 10;

-- Step 5: Example query to test performance
-- Fetch bookings in a date range (Post-partition)
SELECT *
FROM Booking_Partitioned
WHERE start_date BETWEEN '2025-06-01' AND '2025-06-30';

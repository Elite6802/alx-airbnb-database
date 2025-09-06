-- ===========================================
-- Initial query: Retrieve all bookings with user, property, and payment details
-- ===========================================

SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       u.email,
       p.id AS property_id,
       p.name AS property_name,
       p.location,
       pay.id AS payment_id,
       pay.amount,
       pay.payment_date
FROM Booking b
INNER JOIN User u ON b.user_id = u.id
INNER JOIN Property p ON b.property_id = p.id
INNER JOIN Payment pay ON b.id = pay.booking_id;

-- ===========================================
-- Optimized query
-- ===========================================

-- Optimization steps:
-- 1. Ensure indexes exist on b.user_id, b.property_id, pay.booking_id
-- 2. Select only necessary columns to reduce data transfer
-- 3. Use LEFT JOIN for optional payment details if not all bookings have payments

SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.name AS property_name,
       pay.amount AS payment_amount
FROM Booking b
INNER JOIN User u ON b.user_id = u.id
INNER JOIN Property p ON b.property_id = p.id
LEFT JOIN Payment pay ON b.id = pay.booking_id;

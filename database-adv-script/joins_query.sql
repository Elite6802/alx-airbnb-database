-- INNER JOIN: Retrieve all bookings and the respective users who made those bookings
SELECT b.id AS booking_id,
       b.start_date,
       b.end_date,
       u.id AS user_id,
       u.name AS user_name,
       u.email
FROM Booking b
INNER JOIN User u ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews (including properties with no reviews)
SELECT p.id AS property_id,
       p.name AS property_name,
       r.id AS review_id,
       r.rating,
       r.comment
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id;

-- FULL OUTER JOIN: Retrieve all users and all bookings
-- (works in PostgreSQL; for MySQL, use UNION of LEFT and RIGHT JOIN)
SELECT u.id AS user_id,
       u.name AS user_name,
       b.id AS booking_id,
       b.start_date,
       b.end_date
FROM User u
FULL OUTER JOIN Booking b ON u.id = b.user_id;

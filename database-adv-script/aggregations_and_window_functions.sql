-- Aggregation: Find total number of bookings made by each user
SELECT u.id AS user_id,
       u.name AS user_name,
       COUNT(b.id) AS total_bookings
FROM User u
LEFT JOIN Booking b ON u.id = b.user_id
GROUP BY u.id, u.name;

SELECT p.id AS property_id,
       p.name AS property_name,
       COUNT(b.id) AS total_bookings,
       RANK() OVER (ORDER BY COUNT(b.id) DESC) AS property_rank
FROM Property p
LEFT JOIN Booking b ON p.id = b.property_id
GROUP BY p.id, p.name;

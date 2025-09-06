-- Non-correlated subquery: Find properties where avg rating > 4.0
SELECT id, name
FROM Property
WHERE id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);

-- Correlated subquery: Find users who have made more than 3 bookings
SELECT id, name, email
FROM User u
WHERE (
    SELECT COUNT(*)
    FROM Booking b
    WHERE b.user_id = u.id
) > 3;

-- =============================================
-- Airbnb Database Sample Data
-- =============================================

-- =============================================
-- Users
-- =============================================
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashed_pw1', '254700111111', 'guest'),
('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashed_pw2', '254700222222', 'host'),
('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashed_pw3', '254700333333', 'guest'),
('44444444-4444-4444-4444-444444444444', 'Diana', 'Prince', 'diana@example.com', 'hashed_pw4', '254700444444', 'host');

-- =============================================
-- Properties
-- =============================================
INSERT INTO "Property" (property_id, host_id, name, description, location, pricepernight)
VALUES
('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '22222222-2222-2222-2222-222222222222', 'Beach House', 'A lovely beach house', 'Mombasa', 120.00),
('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '44444444-4444-4444-4444-444444444444', 'City Apartment', 'Modern apartment in Nairobi', 'Nairobi', 90.00);

-- =============================================
-- Bookings
-- =============================================
INSERT INTO "Booking" (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
('aaaaaaaa-1111-aaaa-1111-aaaaaaaaaaaa', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', '2025-09-01', '2025-09-05', 480.00, 'confirmed'),
('bbbbbbbb-2222-bbbb-2222-bbbbbbbbbbbb', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '33333333-3333-3333-3333-333333333333', '2025-10-10', '2025-10-15', 450.00, 'pending');

-- =============================================
-- Payments
-- =============================================
INSERT INTO "Payment" (payment_id, booking_id, amount, payment_method)
VALUES
('pppppppp-1111-pppp-1111-pppppppppppp', 'aaaaaaaa-1111-aaaa-1111-aaaaaaaaaaaa', 480.00, 'credit_card'),
('pppppppp-2222-pppp-2222-pppppppppppp', 'bbbbbbbb-2222-bbbb-2222-bbbbbbbbbbbb', 450.00, 'paypal');

-- =============================================
-- Reviews
-- =============================================
INSERT INTO "Review" (review_id, property_id, user_id, rating, comment)
VALUES
('rrrrrrrr-1111-rrrr-1111-rrrrrrrrrrrr', 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '11111111-1111-1111-1111-111111111111', 5, 'Amazing stay, highly recommend!'),
('rrrrrrrr-2222-rrrr-2222-rrrrrrrrrrrr', 'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '33333333-3333-3333-3333-333333333333', 4, 'Great location, comfortable apartment.');

-- =============================================
-- Messages
-- =============================================
INSERT INTO "Message" (message_id, sender_id, recipient_id, message_body)
VALUES
('mmmmmmmm-1111-mmmm-1111-mmmmmmmmmmmm', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hi, I would like to book your property.'),
('mmmmmmmm-2222-mmmm-2222-mmmmmmmmmmmm', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Sure! The dates are available.');

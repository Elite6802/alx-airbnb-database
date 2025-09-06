-- ============================
-- Indexes for User table
-- ============================

-- Index on email for fast lookups
CREATE INDEX idx_user_email ON User(email);

-- Index on name for searches or sorting
CREATE INDEX idx_user_name ON User(name);

-- ============================
-- Indexes for Booking table
-- ============================

-- Index on user_id for joins with User table
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- Index on property_id for joins with Property table
CREATE INDEX idx_booking_property_id ON Booking(property_id);

-- Index on start_date for queries filtering by date
CREATE INDEX idx_booking_start_date ON Booking(start_date);

-- ============================
-- Indexes for Property table
-- ============================

-- Index on name for property searches
CREATE INDEX idx_property_name ON Property(name);

-- Index on location for filtering/searching by city
CREATE INDEX idx_property_location ON Property(location);

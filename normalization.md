# Airbnb Database Normalization

## Objective
Apply normalization principles to ensure the Airbnb database is in **Third Normal Form (3NF)**.

---

## Step 1: Review Existing Schema

Entities:
- **User**
- **Property**
- **Booking**
- **Payment**
- **Review**
- **Message**

We check each table for:
1. **1NF (First Normal Form)**: Ensure atomic values and no repeating groups.
2. **2NF (Second Normal Form)**: Ensure no partial dependency on a composite key (if applicable).
3. **3NF (Third Normal Form)**: Ensure no transitive dependencies (non-key attributes dependent on other non-key attributes).

---

## Step 2: Check for Redundancies / Violations

1. **User Table**  
   - All attributes are atomic.  
   - Primary key: `user_id`.  
   - No partial or transitive dependencies. ✅  

2. **Property Table**  
   - `host_id` references `User.user_id`.  
   - No repeated groups.  
   - Attributes depend only on `property_id`. ✅  

3. **Booking Table**  
   - `property_id` and `user_id` are FKs.  
   - Attributes (`start_date`, `end_date`, `total_price`, `status`) depend only on `booking_id`. ✅  

4. **Payment Table**  
   - `booking_id` is FK.  
   - Attributes (`amount`, `payment_date`, `payment_method`) depend only on `payment_id`. ✅  

5. **Review Table**  
   - `property_id` and `user_id` are FKs.  
   - Attributes (`rating`, `comment`, `created_at`) depend only on `review_id`. ✅  

6. **Message Table**  
   - `sender_id` and `recipient_id` are FKs.  
   - Attributes (`message_body`, `sent_at`) depend only on `message_id`. ✅  

**Conclusion:** No repeating groups, partial dependencies, or transitive dependencies exist. The schema **already satisfies 3NF**.

---

## Step 3: Normalization Notes

- **1NF:** All tables have atomic columns. No arrays or repeating fields.  
- **2NF:** No table has a composite PK with partial dependencies. All non-key attributes depend on the entire PK.  
- **3NF:** No non-key attribute depends on another non-key attribute. All attributes depend only on the primary key.  

---

## Step 4: Summary

The Airbnb database schema is **already normalized to 3NF**.  
No further decomposition is required.  

- Relationships use FKs to maintain referential integrity.  
- Data redundancy is minimized.  
- Queries are efficient, and updates/inserts/deletes avoid anomalies.

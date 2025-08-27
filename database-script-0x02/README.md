# Airbnb Database Seed Data

## Objective
This directory contains SQL scripts to populate the Airbnb database with **sample data** for testing and demonstration.

## Files
- `seed.sql` : SQL INSERT statements for all entities (User, Property, Booking, Payment, Review, Message).  
- `README.md` : Documentation describing the seed data.

## How to Use
1. Make sure your database schema is already created (run `database-script-0x01/schema.sql`).  
2. Run `seed.sql` in your SQL environment.  
3. Verify that tables have data using `SELECT * FROM <table_name>;`.

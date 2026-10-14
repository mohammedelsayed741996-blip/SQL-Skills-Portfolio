-- SQL Learning Journey: Day 2 - Data Definition Language (DDL) Commands

-- ============================================================
-- 1. CREATE STATEMENT
-- Create a new table called 'persons' with core attributes and primary key constraint
-- ============================================================
CREATE TABLE persons (
    id INT NOT NULL,
    person_name VARCHAR(50) NOT NULL,
    birth_date DATE,
    phone VARCHAR(15) NOT NULL,
    CONSTRAINT pk_persons PRIMARY KEY (id)
);

-- Verify table creation
SELECT * FROM persons;

-- ============================================================
-- 2. ALTER STATEMENT
-- Modify the structure of the existing table
-- ============================================================

-- Add a new column 'email' to the persons table
ALTER TABLE persons 
ADD email VARCHAR(50) NOT NULL;

-- Remove the column 'phone' from the persons table
ALTER TABLE persons
DROP COLUMN phone;

-- ============================================================
-- 3. DROP STATEMENT
-- Completely delete the persons table from the database
-- ============================================================
DROP TABLE persons;

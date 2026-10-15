-- ==========================================================
-- Day 3: Data Manipulation Language (DML)
-- Operations: INSERT, UPDATE, DELETE, TRUNCATE
-- ==========================================================

-- 1. INSERT Statement
-- Syntax: INSERT INTO table_name (col1, col2, ...) VALUES (val1, val2, ...);
-- Example: Insert new customers into the customers table

INSERT INTO customers (id, first_name, country, score) 
VALUES 
    (6, 'Anna', 'USA', NULL),
    (7, 'SAM', NULL, 100);


-- 2. UPDATE Statement
-- Syntax: UPDATE table_name SET col1 = val1 WHERE condition;
-- Example: Change the score of customer with ID 6 to 0

UPDATE customers 
SET score = 0 
WHERE id = 6;


-- 3. DELETE Statement
-- Syntax: DELETE FROM table_name WHERE condition;
-- Example: Delete all customers with an ID greater than 5

DELETE FROM customers 
WHERE id > 5;


-- 4. TRUNCATE Statement
-- Syntax: TRUNCATE TABLE table_name;
-- Example: Delete all data from the persons table quickly

TRUNCATE TABLE persons;

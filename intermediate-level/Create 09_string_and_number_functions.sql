-- ==========================================================
-- Topic: String & Number Functions
-- Description: Demonstration of string manipulation, extraction, 
--              and mathematical number functions in SQL.
-- ==========================================================

-- 1. String Functions & Manipulation

-- Concatenate first name and country into one column[cite: 1]
SELECT CONCAT(first_name, ' ', country) AS name_country 
FROM customers;

-- UPPER / LOWER
SELECT UPPER('Maria'), LOWER('MARIA');

-- TRIM
SELECT TRIM('  jhon  ');

-- REPLACE
SELECT '123-456-789', REPLACE('123-456-789', '-', '/');

-- LEN
SELECT LEN('Maria');

-- LEFT / RIGHT
SELECT LEFT('maria', 4);

-- SUBSTRING
SELECT SUBSTRING('maria', 2, 3);


-- 2. Number Functions

-- ROUND
SELECT ROUND(3.516, 2);

-- ABS
SELECT ABS(-10);

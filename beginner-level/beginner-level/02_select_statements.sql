/* =====================================================================
   SQL - Beginner Level
   Chapter 1: SELECT Statements
   ---------------------------------------------------------------------
   Topics covered:
     1. SELECT * (simplest form)
     2. Selecting specific columns
     3. WHERE
     4. ORDER BY
     5. GROUP BY
     6. HAVING
     7. DISTINCT
     8. TOP (SQL Server) / LIMIT (MySQL & PostgreSQL)

   Tables used: customers, orders
   Dialect: SQL Server (T-SQL)
   ===================================================================== */


-- =====================================================================
-- 1. SELECT * - Simplest form
-- =====================================================================

-- Retrieve all columns and all rows from the customers table
SELECT *
FROM customers;

-- Retrieve all columns and all rows from the orders table
SELECT *
FROM orders;


-- =====================================================================
-- 2. SELECT specific columns
-- =====================================================================

-- Retrieve only the first name, country, and score of each customer
SELECT
    first_name,
    country,
    score
FROM customers;


-- =====================================================================
-- 3. WHERE - Filter rows before any grouping happens
-- =====================================================================

-- Retrieve customers with a score not equal to zero
SELECT *
FROM customers
WHERE score != 0;

-- Retrieve customers from Germany
SELECT *
FROM customers
WHERE country = 'Germany';


-- =====================================================================
-- 4. ORDER BY - Sort the results
-- Note: the default sort order is ASC (ascending)
-- =====================================================================

-- Retrieve customers, sorted by highest score first
SELECT *
FROM customers
ORDER BY score DESC;

-- Retrieve customers, sorted by lowest score first
SELECT *
FROM customers
ORDER BY score ASC;

-- Nested sort (multiple columns):
-- Retrieve customers sorted by country, then by highest score within each country
SELECT *
FROM customers
ORDER BY
    country,
    score DESC;


-- =====================================================================
-- 5. GROUP BY - Aggregate rows into groups
-- =====================================================================

-- Find the total score for each country
SELECT
    country,
    SUM(score) AS total_score
FROM customers
GROUP BY country;

-- Find the total score and the total number of customers for each country
SELECT
    country,
    SUM(score)  AS total_score,
    COUNT(id)   AS total_customers
FROM customers
GROUP BY country;


-- =====================================================================
-- 6. HAVING - Filter groups AFTER aggregation
-- Key difference:
--   WHERE  -> filters individual rows BEFORE grouping
--   HAVING -> filters groups AFTER aggregation
-- =====================================================================

-- Find the average score for each country, considering only customers
-- with a score not equal to zero, and return only the countries
-- with an average score greater than 430
SELECT
    country,
    AVG(score) AS average_score
FROM customers
WHERE score != 0              -- row-level filter (before grouping)
GROUP BY country
HAVING AVG(score) > 430;      -- group-level filter (after aggregation)


-- =====================================================================
-- 7. DISTINCT - Remove duplicate values
-- =====================================================================

-- Return a unique list of all countries
SELECT DISTINCT country
FROM customers;


-- =====================================================================
-- 8. TOP - Limit the number of rows returned
-- Note: TOP is SQL Server syntax only.
--   MySQL / PostgreSQL : SELECT * FROM customers LIMIT 3;
--   Oracle (12c+)      : SELECT * FROM customers FETCH FIRST 3 ROWS ONLY;
-- =====================================================================

-- Retrieve only 3 customers
SELECT TOP 3 *
FROM customers;

-- Retrieve the top 3 customers with the highest score
SELECT TOP 3 *
FROM customers
ORDER BY score DESC;

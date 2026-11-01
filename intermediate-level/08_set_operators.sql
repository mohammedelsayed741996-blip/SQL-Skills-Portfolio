/* ==========================================
   SET OPERATORS IN SQL
   Set operations combine the results of 
   multiple queries into a single result set.
   ========================================== */

-- Syntax structure:
-- First SELECT statement 
-- [SET OPERATOR] 
-- Second SELECT statement


--------------------------------------------------
-- 1- UNION
--------------------------------------------------
/* 
UNION
- Returns all distinct rows from both queries. 
*/

/* SQL TASK:
   Combine the data from employees and customers into one table. 
*/

SELECT FirstName, LastName 
FROM sales.Customers

UNION

SELECT FirstName, LastName 
FROM sales.employees;


--------------------------------------------------
-- 2- UNION ALL
--------------------------------------------------
/* 
UNION ALL
- Returns all rows from both queries, including duplicates. 
*/

/* SQL TASK:
   Combine the data from employees and customers into one table, including duplicates. 
*/

SELECT FirstName, LastName 
FROM sales.Customers

UNION ALL

SELECT FirstName, LastName 
FROM sales.employees;


--------------------------------------------------
-- 3- EXCEPT
--------------------------------------------------
/* 
EXCEPT
- Returns all distinct rows from the first query that are not found in the second query. 
*/

/* SQL TASK:
   Find employees who are not customers at the same time. 
*/

SELECT FirstName, LastName 
FROM sales.Employees

EXCEPT

SELECT FirstName, LastName 
FROM sales.Customers;


--------------------------------------------------
-- 4- INTERSECT
--------------------------------------------------
/* 
INTERSECT
- Returns only the rows that are common in both queries. 
*/

/* SQL TASK:
   Find employees who are also customers. 
*/

SELECT FirstName, LastName 
FROM sales.Employees

INTERSECT

SELECT FirstName, LastName 
FROM sales.Customers;

-- Intermediate Level
-- Day 4: Conditions & Comparison Operators

-- Comparison Operators
-- Retrieve all customers from Germany
SELECT * 
FROM customers 
WHERE country = 'Germany';

-- Retrieve all customers who are not from Germany
SELECT * 
FROM customers 
WHERE country != 'Germany';

-- Retrieve all customers with a score greater than 500
SELECT * 
FROM customers 
WHERE score > 500;

-- Retrieve all customers with a score of 500 or more
SELECT * 
FROM customers 
WHERE score >= 500;

-- Retrieve all customers with a score less than 500
SELECT * 
FROM customers 
WHERE score < 500;


-- Logical Operators

-- AND
-- Retrieve all customers who are from the USA AND have a score greater than 500
SELECT * 
FROM customers 
WHERE country = 'USA' AND score > 500;

-- OR
-- Retrieve all customers who are either from the USA OR have a score greater than 500
SELECT * 
FROM customers 
WHERE country = 'USA' OR score > 500;

-- NOT
-- Retrieve all customers with a score NOT less than 500
SELECT * 
FROM customers 
WHERE NOT score < 500;


-- Range Operator (BETWEEN)
-- Retrieve all customers whose score falls in the range between 100 and 500
SELECT * 
FROM customers 
WHERE score BETWEEN 100 AND 500;


-- Membership Operators (IN / NOT IN)
-- Retrieve all customers from USA or Germany
SELECT * 
FROM customers 
WHERE country IN ('USA', 'Germany');


-- Search Operator (LIKE)
-- Find all customers whose first name ends with 'n'
SELECT * 
FROM customers 
WHERE first_name LIKE '%n';

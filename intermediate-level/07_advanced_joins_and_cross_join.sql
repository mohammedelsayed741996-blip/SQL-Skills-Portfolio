-- advanced sql joins

-- 1- left anti join
-- Returns row from left table which has not match in right table
-- Get all customers who haven't placed any order
-- the same syntax of left join but use key of the right table is null after where clause
SELECT * 
FROM customers AS c
LEFT JOIN orders AS o 
  ON c.id = o.customer_id 
WHERE o.customer_id IS NULL;

-- 2 - right anti join
-- Get all orders without matching customers
SELECT * 
FROM customers AS c
RIGHT JOIN orders AS o 
  ON c.id = o.customer_id
WHERE c.id IS NULL;

-- 3 - full anti join
-- Returns Only Rows that Don't Match in either Tables
-- Find customers without orders and orders without customers
SELECT * 
FROM orders AS o
FULL JOIN customers AS c
  ON c.id = o.customer_id
WHERE c.id IS NULL 
   OR o.customer_id IS NULL;

-- 4- cross join 
-- Combines Every Row from Left with Every Row from Right
-- Generate all possible combinations of customers and orders
SELECT *
FROM customers
CROSS JOIN orders;

-- SQL Joins Basics
-- joining columns only
-- join basic types (no join - inner - left - right - full)
-- join advanced types (left anti join - right anti join - full anti join - cross join)

-- 1 - no join no combine data
-- Retrieve all data from customers and orders as separate results
select * from customers;
select * from orders;

-- 2 - inner join return only the matching data from both tables order of tables does not matter
-- syntax: select * from a (inner) join b on (condition (A.key=B.key))
-- Get all customers along with their orders, but only for customers who have placed an order
select id, first_name 
from customers 
inner join orders 
on customers.id = orders.customer_id;

-- 3 - left join -- all rows from left and only matching data from right
-- syntax: select * from A left join B on A.KEY = B.KEY
-- Get all customers along with their orders, including those without orders
SELECT * 
FROM customers AS C 
LEFT JOIN orders AS O 
ON C.id = O.customer_id;

-- 4 - RIGHT JOIN -- ALL THE ROWS FROM RIGHT TABLE AND ONLY THE MATCHING FROM THE LEFT
-- syntax: select * from A RIGHT join B on A.KEY = B.KEY
-- Get all customers along with their orders, including those without orders
select * 
from customers as c 
right join orders as o 
on c.id = o.customer_id;

-- 5 - full join -- return all the rows from both tables
-- syntax: select * from a (full) join b on (condition (A.key=B.key))
-- Get all customers along with their orders, including orders without matching customers
select * 
from customers as c 
full join orders as o 
on c.id = o.customer_id;

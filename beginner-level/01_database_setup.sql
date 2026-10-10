/* =====================================================================
   Database Setup Script
   ---------------------------------------------------------------------
   Run this file FIRST to create the database, tables and sample data
   used in all the lessons.
   Dialect: SQL Server (T-SQL)
   ===================================================================== */

-- Create the database if it does not exist
IF DB_ID('MyDatabase') IS NULL
    CREATE DATABASE MyDatabase;
GO

USE MyDatabase;
GO

-- Drop tables if they already exist (so the script can be re-run safely)
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
GO

-- =====================================================================
-- Table: customers
-- =====================================================================
CREATE TABLE customers (
    id         INT         NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    country    VARCHAR(50),
    score      INT
);

INSERT INTO customers (id, first_name, country, score) VALUES
    (1, 'Maria',  'Germany', 350),
    (2, 'John',   'USA',     900),
    (3, 'Georg',  'UK',      750),
    (4, 'Martin', 'Germany', 500),
    (5, 'Peter',  'USA',     0);

-- =====================================================================
-- Table: orders
-- =====================================================================
CREATE TABLE orders (
    order_id    INT  NOT NULL PRIMARY KEY,
    customer_id INT  NOT NULL,
    order_date  DATE,
    sales       INT
);

INSERT INTO orders (order_id, customer_id, order_date, sales) VALUES
    (1001, 1, '2021-01-11', 35),
    (1002, 2, '2021-04-05', 15),
    (1003, 3, '2021-06-18', 20),
    (1004, 6, '2021-08-31', 10);
GO

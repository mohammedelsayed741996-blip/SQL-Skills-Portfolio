-- =====================================================
-- Date & Time Functions in SQL Server (T-SQL)
-- =====================================================

-- 1. Date Extract (GETDATE & Part Extraction)
SELECT 
    OrderID,
    creationtime,
    GETDATE() AS Current_Timestamp
FROM Sales.Orders;

-- Extracting Year, Month, and Day individually
SELECT 
    YEAR(creationtime) AS order_year,
    MONTH(creationtime) AS order_month,
    DAY(creationtime) AS order_day
FROM Sales.Orders;

-- 2. Part Extraction (DATEPART, DATENAME, DATETRUNC, EOMONTH)
-- DATEPART: Returns an integer representing the specified datepart
SELECT DATEPART(week, creationtime) AS week_number FROM Sales.Orders;
SELECT DATEPART(quarter, creationtime) AS quarter_number FROM Sales.Orders;

-- DATENAME: Returns a character string representing the specified datepart
SELECT DATENAME(weekday, creationtime) AS day_name FROM Sales.Orders;

-- DATETRUNC: Truncates the date/time to the specified precision
SELECT DATETRUNC(hour, creationtime) AS truncated_hour FROM Sales.Orders;

-- EOMONTH: Returns the last day of the month containing the specified date
SELECT EOMONTH(creationtime) AS end_of_month FROM Sales.Orders;

-- 3. Format & Casting (FORMAT, CONVERT, CAST)
-- FORMAT: Formats a value with the specified format and optional culture
SELECT FORMAT(creationtime, 'dd/MM/yyyy') AS formatted_date FROM Sales.Orders;

-- CONVERT: Converts an expression from one data type to another with style formatting
SELECT CONVERT(VARCHAR, creationtime, 103) AS converted_date_uk FROM Sales.Orders;

-- CAST: Converts an expression from one data type to another
SELECT CAST(creationtime AS DATE) AS casted_date FROM Sales.Orders;

-- 4. Calculations (DATEADD, DATEDIFF)
-- DATEADD: Adds an interval to a specified date
SELECT DATEADD(year, 2, creationtime) AS date_plus_two_years FROM Sales.Orders;

-- DATEDIFF: Returns the count of specified date boundaries crossed between two dates
SELECT DATEDIFF(day, creationtime, GETDATE()) AS days_since_order FROM Sales.Orders;

-- 5. Validation (ISDATE)
-- ISDATE: Returns 1 if the expression is a valid date, otherwise 0
SELECT 
    creationtime,
    ISDATE(creationtime) AS is_valid_date 
FROM Sales.Orders;

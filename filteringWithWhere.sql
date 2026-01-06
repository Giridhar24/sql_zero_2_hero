-- Topic of the Day: Filtering with WHERE
-- Explanation: Yesterday we selected all rows.
-- Today, we filter rows to find specific data.
-- The WHERE clause filters records before they are returned. It acts like a gatekeeper.

-- Imagine an 'Orders' table with columns: order_id, customer, amount, status

-- 1. Exact Match
-- Find only orders made by 'John Doe'
SELECT * FROM Orders
WHERE customer = 'John Doe';

-- 2. Numeric Comparison
-- Find high-value orders (greater than 500)
SELECT order_id, amount
FROM Orders
WHERE amount > 500;

-- 3. Excluding Data (Not Equal)
-- Find orders that are NOT completed
-- Note: '<>' or '!=' both mean "not equal" in most SQL dialects
SELECT * FROM Orders
WHERE status != 'Completed';
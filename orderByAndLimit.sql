-- Topic of the Day: Sorting (ORDER BY) and Limiting (LIMIT)
-- Explanation: Often, data is returned in random order.
-- ORDER BY lets you sort it alphabetically or numerically.
-- LIMIT is essential when dealing with millions of rows; it tells the database "just show me the top X results."

-- Imagine a 'Products' table

-- Scenario 1: Sort by Price (Lowest to Highest is default)
SELECT product_name, price
FROM Products
ORDER BY price;

-- Scenario 2: Sort DESCENDING (Highest to Lowest)
SELECT product_name, price
FROM Products
ORDER BY price DESC;

-- Scenario 3: Who are the top 3 highest paid employees?
-- We combine ORDER BY with LIMIT
SELECT employee_name, salary
FROM Employees
ORDER BY salary DESC
LIMIT 3;
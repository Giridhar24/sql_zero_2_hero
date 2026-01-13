-- Topic of the Day: DISTINCT
-- Explanation: Sometimes your data has duplicates.
-- If you want a list of unique values (e.g., "What distinct countries do we have customers in?"), you use DISTINCT.

-- Imagine a 'Customers' table with 100 rows, but only 3 countries.

-- Scenario 1: Get ALL countries (including duplicates)
SELECT country FROM Customers;
-- Result: US, UK, US, US, UK, CA...

-- Scenario 2: Get UNIQUE countries
SELECT DISTINCT country FROM Customers;
-- Result: US, UK, CA

-- Scenario 3: Count unique countries
-- "How many different countries do we serve?"
SELECT COUNT(DISTINCT country) FROM Customers;
-- Result: 3
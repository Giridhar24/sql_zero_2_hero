-- Topic of the Day: Aggregation (GROUP BY)
-- Explanation: Often you want to summarize data, not just list it. GROUP BY allows you to bucket rows together.
-- Aggregate Functions: COUNT(), SUM(), AVG(), MIN(), MAX().
-- Rule: If you use an aggregate function alongside a normal column, you must group by that normal column.


-- Imagine a 'Sales' table: | Region | Amount |

-- Scenario 1: Total sales for the whole company
SELECT SUM(amount) FROM Sales;

-- Scenario 2: Total sales PER Region
-- The database "buckets" all 'East' rows together and sums them,
-- then buckets all 'West' rows and sums them.
SELECT Region, SUM(amount) as Total_Sales
FROM Sales
GROUP BY Region;

-- Scenario 3: Count how many sales occurred per Region
SELECT Region, COUNT(*) as Transaction_Count
FROM Sales
GROUP BY Region;
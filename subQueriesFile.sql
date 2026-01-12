-- Topic of the Day: Subqueries
-- Explanation: A Subquery is a query nested inside another query. It runs first, and its result is used by the outer query.
-- Use Case: "Who earns more than the average salary?" You can't know "who" until you calculate the "average" first.

-- Imagine an Employees table

-- Step 1 (Mental Check): Calculate average
-- SELECT AVG(salary) FROM Employees;  --> Returns 50000

-- Step 2: The Subquery
SELECT employee_name, salary
FROM Employees
WHERE salary > (
    SELECT AVG(salary)
    FROM Employees
);

-- Logic:
-- 1. The inner (SELECT AVG...) runs first and finds 50000.
-- 2. The outer query becomes: WHERE salary > 50000.
-- Topic of the Day: Common Table Expressions (CTEs)
-- Explanation: Subqueries (queries inside queries) are hard to read.
-- CTEs (using the WITH clause) allow you to define a temporary table at the top of your query, give it a name, and then use it.
-- It makes code readable.

-- Problem: Find the average salary of departments,
-- but only show departments where that average is > 50000.

-- 1. Define the CTE (The temporary calculation)
WITH DeptStats AS (
    SELECT dept_id, AVG(salary) as avg_sal
    FROM Employees
    GROUP BY dept_id
)

-- 2. Use the CTE (The final filter)
SELECT * FROM DeptStats
WHERE avg_sal > 50000;

-- This is much cleaner than putting the SELECT inside the FROM clause!
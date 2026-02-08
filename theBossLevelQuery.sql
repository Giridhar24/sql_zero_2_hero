-- Topic of the Day: The "Boss Level" Query
--
-- Explanation: We combine JOIN, GROUP BY, HAVING, and ORDER BY into one report.
--
-- Goal: "Show me the top 3 departments that have spent more than $1M on salaries, listed by their average employee rating."

SELECT
    d.dept_name,
    COUNT(e.id) as employee_count,
    SUM(e.salary) as total_spend,
    AVG(e.performance_rating) as avg_rating
FROM Departments d
         JOIN Employees e ON d.id = e.dept_id

-- 1. Filter raw data (Optional)
WHERE e.status = 'Active'

-- 2. Group into buckets
GROUP BY d.dept_name

-- 3. Filter the buckets (The $1M threshold)
HAVING SUM(e.salary) > 1000000

-- 4. Sort the winners
ORDER BY avg_rating DESC
LIMIT 3;
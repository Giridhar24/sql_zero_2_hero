-- Topic of the Day: HAVING vs WHERE
-- Explanation: This is a classic interview question.
-- WHERE: Filters rows before grouping. (e.g., "Filter out employees with low salaries").
-- HAVING: Filters groups after grouping. (e.g., "Filter out Departments where the average salary is low").

-- Scenario: Find departments with a total payroll greater than $1,000,000.

SELECT Department, SUM(Salary) as Total_Payroll
FROM Employees

-- 1. WHERE filters individual rows first (optional)
WHERE Status = 'Active'

-- 2. GROUP BY creates the buckets
GROUP BY Department

-- 3. HAVING filters the buckets (Aggregate filter)
-- You CANNOT use 'WHERE SUM(Salary) > ...' because the sum hasn't happened yet!
HAVING SUM(Salary) > 1000000;
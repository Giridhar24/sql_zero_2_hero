-- Topic of the Day: Window Functions (ROW_NUMBER)
-- Explanation: Standard GROUP BY collapses rows. Window Functions allow you to calculate stats without collapsing rows.
-- ROW_NUMBER(): Assigns a rank (1, 2, 3...) to rows within a partition.
-- Use Case: "Find the top 2 highest-paid employees per department."

-- Syntax: ROW_NUMBER() OVER (PARTITION BY group ORDER BY value)

SELECT
    name,
    department,
    salary,
    ROW_NUMBER() OVER (
        PARTITION BY department
        ORDER BY salary DESC
        ) as rank_in_dept
FROM Employees;

-- Result Logic:
-- IT Dept:
--   Alice ($90k) -> Rank 1
--   Bob   ($80k) -> Rank 2
-- HR Dept:
--   Charlie ($70k) -> Rank 1
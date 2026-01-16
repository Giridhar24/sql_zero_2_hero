-- Topic of the Day: CASE Statements
-- Explanation: This is "If-Else" logic inside a SQL query.
-- It allows you to create new categories on the fly based on data values.

-- Imagine an 'Employees' table

SELECT
    name,
    salary,
    -- Create a new column 'Salary_Band' based on logic
    CASE
        WHEN salary > 80000 THEN 'High Earner'
        WHEN salary > 50000 THEN 'Average Earner'
        ELSE 'Low Earner'
        END as Salary_Band
FROM Employees;
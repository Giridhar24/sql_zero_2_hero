-- Topic of the Day: UPDATE and DELETE
-- Explanation: Data changes. People get raises (UPDATE). People quit (DELETE).
-- WARNING: Always use a WHERE clause. If you forget it, you will update/delete every single row in the table.

-- Scenario 1: Give 'Alice' a raise
UPDATE Employees
SET salary = 60000
WHERE name = 'Alice';

-- Scenario 2: Promote everyone in IT
UPDATE Employees
SET salary = salary + 5000
WHERE dept_id = 102; -- Assuming 102 is IT

-- Scenario 3: Fire 'Bob' (Delete row)
DELETE FROM Employees
WHERE name = 'Bob';

-- Check results
SELECT * FROM Employees;


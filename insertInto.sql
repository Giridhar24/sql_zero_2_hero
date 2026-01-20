-- Topic of the Day: INSERT INTO
-- Explanation: We created tables yesterday.
-- Now let's populate them.
-- INSERT INTO adds new rows. You should specify the column names to be safe.

-- Assume 'Departments' table exists (id, name)

-- Scenario 1: Insert Single Row
INSERT INTO Departments (dept_id, dept_name)
VALUES (101, 'Human Resources');

-- Scenario 2: Insert Multiple Rows
INSERT INTO Departments (dept_id, dept_name)
VALUES
    (102, 'Engineering'),
    (103, 'Sales'),
    (104, 'Marketing');

-- Check result
SELECT * FROM Departments;
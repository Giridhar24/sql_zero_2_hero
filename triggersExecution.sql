-- Topic of the Day: Triggers
--
-- Explanation: A Trigger is a piece of code that runs automatically when an event happens (INSERT, UPDATE, DELETE).
--
-- Use Case: Audit Logs. "Every time someone changes a salary, save the old salary in a history table."


-- Assume we have 'Employees' and 'Salary_Audit' tables

CREATE TRIGGER LogSalaryChange
    AFTER UPDATE ON Employees
    FOR EACH ROW
BEGIN
-- Check if the salary actually changed
IF OLD.salary <> NEW.salary THEN
INSERT INTO Salary_Audit (emp_id, old_salary, new_salary, change_date)
VALUES (OLD.id, OLD.salary, NEW.salary, NOW());
END IF;
END;

-- Now, if you run:
-- UPDATE Employees SET salary = 90000 WHERE id = 1;
-- The 'Salary_Audit' table will automatically get a new row.
-- Topic of the Day: Stored Procedures
--
-- Explanation: A Stored Procedure is a function saved inside the database. It can accept parameters and run multiple SQL commands.
--
-- Why? Security (users can run the procedure without access to tables) and Speed (pre-compiled).

-- 1. Create the Procedure
CREATE PROCEDURE AddEmployee(
    IN p_name VARCHAR(50),
    IN p_salary INT
)
BEGIN
    -- Check logic inside the DB
    IF p_salary < 30000 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Salary too low!';
    ELSE
        INSERT INTO Employees (name, salary) VALUES (p_name, p_salary);
    END IF;
END;

-- 2. Call the Procedure
CALL AddEmployee('Intern', 40000); -- Success
CALL AddEmployee('Bad Entry', 100); -- Fails with error
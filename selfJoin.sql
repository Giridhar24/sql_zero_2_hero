-- Topic of the Day: Self Join
-- Explanation: A Self Join is a regular join, but the table is joined with itself.
-- Use Case: "Hierarchies." If you have an Employees table with columns Employee_ID and Manager_ID, the Manager is also an employee in the same table.
-- To get the Manager's name next to the Employee's name, you join the table to itself.

-- Table: Employees (id, name, manager_id)

SELECT
    E.name AS Employee_Name,
    M.name AS Manager_Name
FROM Employees E
         JOIN Employees M
              ON E.manager_id = M.id;

-- Logic:
-- We pretend we have two tables: 'E' (Employee) and 'M' (Manager).
-- We match the Employee's "Manager ID" to the Manager's "Employee ID".
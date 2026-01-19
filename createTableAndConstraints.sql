-- Topic of the Day: CREATE TABLE & Constraints
-- Explanation: We have been querying tables, but where do they come from? DDL (Data Definition Language) allows us to build the structure.
-- Primary Key: Unique ID for the row.
-- Foreign Key: Links to another table.
-- Not Null: Cannot be empty.

-- 1. Create the Parent Table
CREATE TABLE Departments (
                             dept_id INT PRIMARY KEY,
                             dept_name VARCHAR(50) NOT NULL
);

-- 2. Create the Child Table
CREATE TABLE Employees (
                           emp_id INT PRIMARY KEY,
                           name VARCHAR(100),
                           salary INT CHECK (salary > 0), -- Constraint: Salary must be positive
                           dept_id INT,

    -- Link this table to Departments
                           FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);
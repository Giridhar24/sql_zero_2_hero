-- Topic of the Day: The SELECT Statement
-- Explanation: SQL (Structured Query Language) is used to talk to databases.
-- The most fundamental command is SELECT. It tells the database which columns you want to see.
-- The FROM clause tells it which table to look in.

-- Imagine a table named 'Employees'

-- Scenario 1: Select EVERYTHING (The wildcard *)
-- Use this sparingly in production as it can be slow on huge tables.
SELECT * FROM Employees;

-- Scenario 2: Select SPECIFIC columns (Best Practice)
-- This only retrieves the names and emails, saving memory.
SELECT first_name, email
FROM Employees;
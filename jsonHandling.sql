-- Topic of the Day: JSON Handling
--
-- Explanation: SQL is usually rigid (Columns must act like spreadsheets).
--
-- But modern SQL (PostgreSQL, MySQL 8.0) supports JSON Columns.
--
-- This allows you to store flexible data (like a settings config) inside a rigid table.

-- 1. Create Table with JSON column
CREATE TABLE UserSettings (
                              id INT PRIMARY KEY,
                              preferences JSON
);

-- 2. Insert JSON Data
INSERT INTO UserSettings VALUES
                             (1, '{"theme": "dark", "notifications": true}'),
                             (2, '{"theme": "light", "notifications": false}');

-- 3. Query specific JSON keys
-- (Syntax varies slightly by DB. This is MySQL style)
SELECT
    id,
    preferences->>"$.theme" as theme
FROM UserSettings
WHERE preferences->>"$.notifications" = 'true';
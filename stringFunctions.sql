-- Topic of the Day: String Functions
--
-- Explanation: Data is rarely clean. You often need to format text inside the database.
--
-- CONCAT: Join strings.
--
-- UPPER / LOWER: Change case.
--
-- SUBSTRING: Extract part of a string.

-- Table: Users (first_name, last_name, email)

SELECT
    -- 1. Combine names
    CONCAT(first_name, ' ', last_name) as full_name,

    -- 2. Extract initials (Start at index 1, take 1 character)
    -- Note: SQL indexing often starts at 1, not 0!
    CONCAT(SUBSTRING(first_name, 1, 1), '.', SUBSTRING(last_name, 1, 1), '.') as initials,

    -- 3. Clean email (Upper case)
    UPPER(email) as email_cap
FROM Users;
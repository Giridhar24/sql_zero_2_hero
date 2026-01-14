-- Topic of the Day: Pattern Matching (LIKE)
-- Explanation: Sometimes you don't know the exact value, only part of it. LIKE allows fuzzy searching using wildcards.
-- %: Matches any string of any length.
-- _: Matches exactly one character.

-- Scenario 1: Find all customers whose name starts with 'J'
-- 'J%' means "J" followed by ANYTHING
SELECT * FROM Customers
WHERE name LIKE 'J%';

-- Scenario 2: Find emails ending in '@gmail.com'
-- '%@gmail.com' means ANYTHING followed by "@gmail.com"
SELECT * FROM Users
WHERE email LIKE '%@gmail.com';

-- Scenario 3: Find 5-letter names starting with 'T' and ending in 'm'
-- 'T___m' (Three underscores)
SELECT * FROM Users
WHERE name LIKE 'T___m';
-- Matches: "Timmy", "Tammy"
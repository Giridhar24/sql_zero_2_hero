-- Topic of the Day: Database Indexes
-- Explanation: By default, when you search WHERE email = '...', the database reads every single row to find matches.
-- This is slow ($O(N)$).
-- An Index is a data structure (like a B-Tree) that sorts a specific column in the background.
-- Searching becomes instant ($O(\log N)$).

-- 1. Create an Index on the 'email' column
-- Doing this takes time once, but makes future SELECTs very fast.
CREATE INDEX idx_user_email
    ON Users(email);

-- 2. This query now uses the Index automatically
SELECT * FROM Users
WHERE email = 'john@example.com';

-- Warning: Don't index everything!
-- Indexes make SELECT fast, but INSERT/UPDATE slow (because the index must update too).
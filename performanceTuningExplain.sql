-- Topic of the Day: Performance Tuning (EXPLAIN)
--
-- Explanation: Your query is slow.
--
-- Why? EXPLAIN asks the database engine: "How do you plan to execute this?"
--
-- It reveals if the DB is doing a Full Table Scan (Bad, checking every row) or using an Index (Good, jumping to the answer).


-- 1. Check the plan
EXPLAIN SELECT * FROM Users WHERE email = 'test@example.com';

-- Output interpretation:
-- type: ALL  -> Full Table Scan (Slow)
-- type: ref  -> Using Index (Fast)
-- rows: 1000 -> It expects to check 1000 rows
-- rows: 1    -> It expects to check 1 row (Ideal)
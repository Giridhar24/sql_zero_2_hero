# Topic of the Day: UNION vs UNION ALL
#
# Explanation: You have two lists of names. You want to combine them into one list.
#
# UNION: Combines them and removes duplicates (Slower, because it has to check).
#
# UNION ALL: Combines them and keeps duplicates (Faster).

-- List 1: Employees in USA (Alice, Bob)
-- List 2: Employees in UK (Bob, Charlie) - Bob moved, so he is in both?

-- Scenario 1: Get unique list of names
SELECT name FROM US_Employees
UNION
SELECT name FROM UK_Employees;
-- Result: Alice, Bob, Charlie (Bob appears once)

-- Scenario 2: Get absolute total records
SELECT name FROM US_Employees
UNION ALL
SELECT name FROM UK_Employees;
-- Result: Alice, Bob, Bob, Charlie (Bob appears twice)
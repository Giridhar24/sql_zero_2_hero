-- Topic of the Day: Transactions (ACID)
-- Explanation: Imagine transferring money:
-- Deduct $100 from Alice.
-- Add $100 to Bob.
-- If the power fails after Step 1, Alice loses money, and Bob gets nothing.
-- This is bad.
-- Transactions ensure that either ALL steps happen, or NONE happen.
-- BEGIN TRANSACTION: Start watching.
-- COMMIT: Save changes permanently.
-- ROLLBACK: Undo changes if something went wrong.

BEGIN TRANSACTION;

-- Step 1
UPDATE Accounts
SET balance = balance - 100
WHERE name = 'Alice';

-- Step 2
UPDATE Accounts
SET balance = balance + 100
WHERE name = 'Bob';

-- If no errors occurred:
COMMIT;

-- If an error occurred anywhere above, you would run:
-- ROLLBACK;
-- (This resets Alice's balance to what it was before the transaction started)
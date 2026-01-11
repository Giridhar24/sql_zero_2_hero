-- Topic of the Day: Handling NULLs (IS NULL & COALESCE)
-- Explanation: NULL represents "unknown" or "missing" data.
-- The Trap: You cannot use = NULL or != NULL. Nothing is equal to unknown. You must use IS NULL or IS NOT NULL.
-- The Fix: COALESCE(column, value) replaces NULLs with a default value (like 0 or "None") for cleaner display.

-- Scenario 1: Find customers without an email
-- WRONG: WHERE email = NULL; (Will return nothing)
-- RIGHT:
SELECT * FROM Customers
WHERE email IS NULL;

-- Scenario 2: Display sales, replacing NULL with 0
-- If 'commission' is NULL, it will display 0 instead.
SELECT
    salesperson_name,
    sales_amount,
    COALESCE(commission, 0) as fixed_commission
FROM Sales;
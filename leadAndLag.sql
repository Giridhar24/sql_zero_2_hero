-- Topic of the Day: LEAD and LAG
--
-- Explanation: These are Window Functions that look at other rows relative to the current one.
--
-- LAG(col, 1): Look at the previous row.
--
-- LEAD(col, 1): Look at the next row.
--
-- Use Case: Calculating "Month-over-Month Growth".


-- Table: Sales (Month, Revenue)

SELECT
    Month,
    Revenue,
    -- Get the revenue from the PREVIOUS row
    LAG(Revenue, 1) OVER (ORDER BY Month) as Previous_Month_Revenue,

    -- Calculate Difference
    Revenue - LAG(Revenue, 1) OVER (ORDER BY Month) as Growth
FROM Sales;

-- Logic:
-- Jan: $100 -> Prev: NULL -> Growth: NULL
-- Feb: $120 -> Prev: $100 -> Growth: +$20
-- Mar: $110 -> Prev: $120 -> Growth: -$10
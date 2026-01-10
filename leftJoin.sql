-- Topic of the Day: LEFT JOIN
-- Explanation: Yesterday's INNER JOIN only showed matches.
-- LEFT JOIN returns ALL rows from the Left table (the first one you write), even if there is no match in the Right table.
-- Use Case: "Show me all Customers, even if they haven't placed an order yet." (Unmatched rows will show NULL).

-- Table: Customers (Left Table)
-- Table: Orders (Right Table)

SELECT Customers.name, Orders.amount
FROM Customers
         LEFT JOIN Orders
                   ON Customers.id = Orders.customer_id;

-- Result Logic:
-- 1. John (has order) -> Shows Amount
-- 2. Sarah (no orders) -> Shows NULL (But she still appears in the list!)
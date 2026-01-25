-- Topic of the Day: Views (CREATE VIEW)
-- Explanation: A View is a "Virtual Table."
-- If you have a complex query (with 5 Joins and filters) that you run every day, you can save it as a View.
-- Then, you can select from the View as if it were a simple table.

-- 1. Create the View
-- Instead of typing this complex join every time...
CREATE VIEW HighValueCustomers AS
SELECT c.name, c.email, o.total_spent
FROM Customers c
         JOIN Orders o ON c.id = o.customer_id
WHERE o.total_spent > 1000;

-- 2. Use the View
-- ...you can just do this:
SELECT * FROM HighValueCustomers;

-- Note: Views usually don't store data; they run the query live when accessed.
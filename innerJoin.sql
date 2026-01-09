-- Topic of the Day: The INNER JOIN
-- Explanation: Databases are "Relational." Data is split into different tables (e.g., Customers table and Orders table) to save space. To see "Who bought what?", you must JOIN them.
-- INNER JOIN: Returns records that have matching values in both tables. If a customer has no orders, they won't appear.
-- Table A: Customers (id, name)
-- Table B: Orders (order_id, amount, customer_id)

SELECT Customers.name, Orders.amount
FROM Customers
INNER JOIN Orders
  ON Customers.id = Orders.customer_id;

-- This reads as:
-- "Show me Names and Amounts...
-- from Customers and Orders...
-- WHERE the Customer ID matches in both tables."
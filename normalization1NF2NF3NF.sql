-- Topic of the Day: Normalization (1NF, 2NF, 3NF)
-- Explanation: Normalization is the process of organizing data to reduce redundancy.
-- 1NF (First Normal Form): Each cell contains a single value (No lists like "Red, Blue" in one cell).
-- 2NF: All columns depend on the Primary Key.
-- 3NF: No "Transitive Dependency." (e.g., If you have ZipCode and City, City depends on ZipCode, not the User ID. Move ZipCode and City to a separate "Locations" table).
-- Why? If you store "City" in the Users table 1,000 times, and the city name changes, you have to update 1,000 rows. If it's in a separate table, you update 1 row.


-- 10. Examine the Products table. How does it identify the type (category) of
-- each item sold? Write a query to list all of the seafood items we carry.

SELECT ProductName, CategoryID
FROM products
WHERE CategoryID = 'Seafood';
-- 1. What is the name of the table that holds the items Northwind sells?

-- products

-- 2. Write a query to list the product id, product name, and unit price of every product.

select
ProductId, ProductName, UnitPrice
from
products;

-- 3. Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price.

select
*
from
products
ORDER BY 
ProductId, ProductName, UnitPrice ASC;

-- 4. What are the products that we carry where the unit price is $7.50 or less?

select
ProductId, ProductName, UnitPrice
from products
Where (((UnitPrice)<7.50) AND ((Discontinued)=False))
order by UnitPrice desc;

-- 5. What are the products that we carry where we have at least 100 units on hand? Order them in descending order by price.

select 
ProductId, ProductName, UnitInStock
from 
products
Where UnitInStock < 100
Order By UnitInStock desc;

-- 6. What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name

SELECT ProductName, UnitPrice, UnitInStock
FROM products
WHERE UnitInStock >= 100
ORDER BY UnitPrice DESC, ProductName ASC;

-- 7. What are the products that we carry where we have no units on hand, but 1
-- or more units of them on backorder? Order them by product name.

SELECT ProductName, UnitInStock, UnitsOnOrder
FROM products
WHERE UnitInStock = 0 AND ReorderLevel >= 1
ORDER BY ProductName ASC;

-- 8. What is the name of the table that holds the types (categories) of the items Northwind sells?

-- categories

-- 9. Write a query that lists all of the columns and all of the rows of the
-- categories table? What is the category id of seafood? --8

select
*
from categories


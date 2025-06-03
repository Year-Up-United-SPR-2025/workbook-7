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
ProductId, ProductName, UnitPrice

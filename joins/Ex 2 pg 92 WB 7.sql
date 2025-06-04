-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name.
SELECT 
    ProductID, 
    ProductName, 
    UnitPrice, 
    CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
ORDER BY CategoryName, ProductName;

-- 2. List the product id, product name, unit price and supplier name of all
-- products that cost more than $75. Order by product name.

SELECT 
    ProductID, 
    ProductName, 
    UnitPrice, 
    CompanyName AS SupplierName
FROM Products
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE UnitPrice > 75
ORDER BY ProductName;

-- 3. List the product id, product name, unit price, category name, and supplier
-- name of every product. Order by product name.

SELECT 
    ProductID, 
    ProductName, 
    UnitPrice, 
    CategoryName, 
    CompanyName AS SupplierName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;

-- 4. What is the product name(s) and categories of the most expensive
-- products? HINT: Find the max price in a subquery and then use that in
-- your more complex query that joins products with categories.

SELECT 
    ProductName, 
    CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID
WHERE UnitPrice = (SELECT MAX(UnitPrice) FROM Products);

-- 5. List the order id, ship name, ship address, and shipping company name of
-- every order that shipped to Germany.

SELECT OrderID, ShipName, ShipAddress, CompanyName
FROM Orders
JOIN Shippers ON Orders.ShipVia = ShipperID
WHERE ShipCountry = 'Germany';

-- 6. List the order id, order date, ship name, ship address of all orders that
-- ordered "Sasquatch Ale"?

SELECT DISTINCT 
    o.OrderID,
    o.OrderDate,
    o.ShipName,
    o.ShipAddress
FROM Orders o
INNER JOIN `Order Details` od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale'
ORDER BY o.OrderDate;
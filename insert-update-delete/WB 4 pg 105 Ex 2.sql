-- 1. Add a new supplier.
INSERT INTO Suppliers (
    SupplierID, 
    CompanyName, 
    ContactName, 
    ContactTitle,
    Address,
    City, 
    Region, 
    PostalCode, 
    Country
) 
VALUES (
    30, 
    'Data This', 
    'John Doe', 
    'Manager', 
    '87 Something Street',
    'New York', 
    'NY', 
    '11542', 
    'USA'
);

-- 2. Add a new product provided by that supplier

INSERT INTO Products (
    ProductID, 
    ProductName, 
    SupplierID, 
    CategoryID, 
    QuantityPerUnit, 
    UnitPrice, 
    UnitsInStock, 
    UnitsOnOrder, 
    ReorderLevel, 
    Discontinued
) 
VALUES (
    78, 
    'High-Speed Data Cable', 
    30, 
    5, 
    '10 units per pack', 
    18.99, 
    100, 
    50, 
    10, 
    0
);

-- 3. List all products and their suppliers.

SELECT 
    p.ProductID, 
    p.ProductName, 
    s.CompanyName AS SupplierName, 
    s.ContactName, 
    s.City, 
    s.Country
FROM Products p
INNER JOIN Suppliers s ON p.SupplierID = s.SupplierID;

-- 4. Raise the price of your new product by 15%.

UPDATE Products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID = 78; 

-- 5. List the products and prices of all products from that supplier.
SELECT 
    ProductID, 
    ProductName, 
    UnitPrice
FROM Products
WHERE SupplierID = 30;

-- 6. Delete the new product.

DELETE FROM `order details`
WHERE ProductID = 78;

-- Then delete the product itself.

DELETE FROM Products 
WHERE ProductID = 78;

-- 7. Delete the new supplier.

DELETE FROM Products WHERE SupplierID = 30;

-- Then delete the supplier.

DELETE FROM Suppliers WHERE SupplierID = 30;

-- 8. List all products.

SELECT 
    ProductID, 
    ProductName, 
    SupplierID, 
    CategoryID, 
    UnitPrice, 
    UnitsInStock
FROM Products;

-- 9. List all suppliers.

SELECT 
    SupplierID, 
    CompanyName, 
    ContactName, 
    ContactTitle, 
    City, 
    Country
FROM Suppliers;
-- 1. Add a new supplier

SELECT * FROM suppliers;

INSERT INTO suppliers (CompanyName,ContactName,ContactTitle,Address,City,Region,PostalCode,Country,Phone,Fax,HomePage)
values ('Grubon','Abraham','Sales person', 'Bole','Addis Ababa', 'Addis Ababa', '75034', 'Ethiopia','0914657667',null,null);

DELETE FROM suppliers
WHERE SupplierID IN (31,32,33);

-- Add a new product provided by that supplier
SELECT * FROM categories;
SELECT * FROM products;

INSERT INTO products (ProductName,SupplierID,CategoryID,QuantityPerUnit,UnitPrice,UnitsInStock,UnitsOnOrder,ReorderLevel,Discontinued)
VALUES ('Cheese',30,4, '10 pacs',25.00,50,0,5,0);

--  List all products and their suppliers
SELECT 
p.ProductID,
p.ProductName,
s.SupplierID,
s.CompanyName AS SupplierName
FROM 
products p
JOIN 
suppliers s ON p.SupplierID = s.SupplierID;

-- Raise the price of your new product by 15%
UPDATE products
SET UnitPrice = UnitPrice * 1.15
WHERE ProductID =78;

-- List the products and prices of all products from that supplier.
SELECT 
p.ProductID,
p.ProductName,
p.UnitPrice,
s.SupplierID,
s.CompanyName AS SupplierName
FROM 
products p
JOIN
suppliers S ON s.SupplierID=p.SupplierID;

-- Delete the new product
DELETE FROM products 
WHERE 
ProductID = 78;

-- Delete the new supplier.
DELETE FROM suppliers
WHERE 
SupplierID = 30;

-- List all products
SELECT * FROM products;
-- List all suppliers.
SELECT * FROM suppliers



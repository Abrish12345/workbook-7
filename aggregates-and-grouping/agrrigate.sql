-- 1. How many suppliers are there? Use a query!
SELECT COUNT(*) AS numberOfSuplliers 
FROM suppliers;

-- 2. What is the sum of all the employee's salaries?
SELECT SUM(Salary) AS TotalSalary 
FROM employees;

-- What is the price of the cheapest item that Northwind sells?

SELECT MIN(UnitPrice) AS cheapest_item
FROM products;

-- What is the average price of items that Northwind sells?
select AVG(UnitPrice) AS AverageItem_Price
FROM products;

-- What is the price of the most expensive item that Northwind sells?
SELECT MAX(UnitPrice) AS expensive_item
FROM products;

-- What is the supplier ID of each supplier and the number of items they
-- supply? You can answer this query by only looking at the Products table

SELECT SupplierID, COUNT(*) AS NumberOfItems
FROM Products 
GROUP BY SupplierID; 

-- What is the category ID of each category and the average price of each item
-- in the category? You can answer this query by only looking at the Products
-- table

SELECT categoryID, AVG(UnitPrice) AS AveragePrice 
FROM products
GROUP BY categoryID;

-- For suppliers that provide at least 5 items to Northwind, what is the
-- supplier ID of each supplier and the number of items they supply? You
-- can answer this query by only looking at the Products table.

SELECT SupplierID, Count(*) AS NumberOfItems
From products
GROUP BY SupplierID
HAVING COUNT(*) >= 5;

-- List the product id, product name, and inventory value (calculated by
-- multiplying unit price by the number of units on hand). Sort the results in
-- descending order by value. If two or more have the same value, order by
-- product name.

SELECT ProductID,
ProductName,
UnitPrice * UnitsInStock AS InventoryValue
FROM
products
ORDER BY
InventoryValue DESC,
ProductName ASC;



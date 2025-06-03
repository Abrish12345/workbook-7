USE northwind;
-- What is the name of the table that holds the items Northwind sells?

SELECT * FROM products;

-- Write a query to list the product id, product name, and unit price of every product
SELECT
 ProductID,ProductName,UnitPrice
 FROM
 products;
 -- Write a query to list the product id, product name, and unit price of every
-- product. Except this time, order then in ascending order by price

 SELECT
 ProductID,ProductName,UnitPrice
 FROM
 products
 ORDER BY UnitPrice asc;
 
-- What are the products that we carry where the unit price is $7.50 or less?

 SELECT
 ProductID,ProductName,UnitPrice
 FROM
 products
 WHERE UnitPrice <=7.50;
 
 -- What are the products that we carry where we have at least 100 units on
 -- hand? Order them in descending order by price
 
 SELECT
 ProductID, ProductName,UnitPrice,UnitsInStock
 FROM
 products
 WHERE UnitsInStock >=100
 ORDER BY 
 UnitPrice DESC;
 
-- What are the products that we carry where we have at least 100 units on
-- hand? Order them in descending order by price. If two or more have the
-- same price, list those in ascending order by product name

 SELECT
 ProductID, ProductName,UnitPrice,UnitsInStock
 FROM
 products
 WHERE UnitsInStock >=100
 ORDER BY 
 UnitPrice DESC,
 ProductName ASC;
 
 -- What are the products that we carry where we have no units on hand, but 1
 -- or more units of them on backorder? Order them by product name.
 
 SELECT 
  ProductID, ProductName, UnitsInStock
  FROM 
  products
  WHERE
  UnitsInStock = 0 
  AND 
  UnitsOnOrder >=1
  ORDER BY 
  ProductName;
 
 -- What is the name of the table that holds the types (categories) of the items
 -- Northwind sells?
 SELECT * FROM categories;
 
 -- Write a query that lists all of the columns and all of the rows of the
 -- categories table? What is the category id of seafood?
 
 SELECT * FROM categories
 WHERE CategoryName = 'seafood';
 
 --  Examine the Products table. How does it identify the type (category) of
 -- each item sold? Write a query to list all of the seafood items we carry.
  
  SELECT ProductID, ProductName
  FROM products
  where CategoryID=8;
  
  --  What are the first and last names of all of the Northwind employees
  
 SELECT FirstName, LastName
 FROM employees;
 
 --  What employees have "manager" in their titles?
 
  SELECT FirstName, LastName
 FROM employees
 WHERE Title LIKE '%Manager%';
 
 --  List the distinct job titles in employees.
 SELECT DISTINCT Title
 FROM employees;
 
 -- 14. What employees have a salary that is between $200 0 and $2500?
 SELECT * FROM employees
 WHERE Salary >=200 AND Salary <= 25000;
 
 --  List all of the information about all of Northwind's suppliers
 SELECT * FROM suppliers 
 --  Examine the Products table. How do you know what supplier supplies
 -- each product? Write a query to list all of the items that "Tokyo Traders"
 -- supplies to Northwind
 SELECT p.ProductID, p.ProductName, p.SupplierID
 FROM Products p
 JOIN Suppliers s ON p.SupplierID = s.SupplierID
 WHERE s.CompanyName ='Tokyo Traders';
 
 
 
 
 
 
 
 
 
 
 
 
 
 


-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT productName, categoryName
FROM product
  JOIN category ON product.CategoryId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT o.Id, s.CompanyName, o.OrderDate
FROM [Order] AS o
  JOIN Shipper AS s
  ON s.Id = o.ShipVia
WHERE o.OrderDate < '2012-08-09'
ORDER BY o.OrderDate DESC;

-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT o.OrderId, o.Quantity, p.ProductName
FROM orderDetail AS o
  JOIN product AS p
  ON o.ProductId = p.Id
WHERE o.OrderId = '10251';

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT o.Id, c.CompanyName, e.LastName
FROM [order] AS o
  JOIN customer AS c
  ON o.CustomerId = c.Id
  JOIN employee AS e
  ON o.EmployeeId = e.Id;
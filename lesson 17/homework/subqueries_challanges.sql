--1

select * from Products
where Price > (select AVG(p1.Price) from Products p1)

--2 Create a query using an independent subquery to find staff members who have worked in a division that employs more than 10 people.

-- ?? No such table 

--3 Write a query that uses a correlated subquery to list all staff members whose salary exceeds the average salary in their respective division.

-- ?? No such table 

--4 Use a subquery to find all clients who have made a purchase in the Purchases table.

select O1.OrderID, O1.CustomerID, O1.OrderAmount, O1.OrderDate, C1.CustomerName, C1.City from Orders O1
inner join Customers C1 on O1.CustomerID = C1.CustomerID
where O1.CustomerID IN (select CustomerID from Orders)

--5 Write a query that uses the EXISTS operator to retrieve all purchases that include at least one detail in the PurchaseDetails table.

--??

--6 Create a subquery to list all items that have been sold more than 100 times according to the PurchaseDetails table.

select * from Sales
where ProductID IN (select ProductID from Sales s where s.SalesAmount > 100.00)

--7 Use a subquery to list all staff members who earn more than the overall company’s average salary.

--?? no such table

--8 Write a subquery to find all vendors that supply items with a price below $50.

select * from Products
where ProductID IN (select ProductID from Products P where P.Price < 50)

--9 Use a subquery to determine the maximum item price in the Items table.

select * from Products
where Price = (select max(Price) from Products)

--10 Write a query using an independent subquery to find the highest total purchase value in the Purchases table.

select * from Orders
where OrderAmount = (select max(O.OrderAmount) from Orders O)

--11 Write a subquery to list clients who have never made a purchase.

select * from Customers C
inner join Orders O on C.CustomerID = O.CustomerID
where C.CustomerID NOT IN (select CustomerID from Orders)

--12 Use a subquery to list all items that belong to the category "Electronics."

--??

--13 Write a subquery to list all purchases that were made after a specified date.

select * from Orders O
where O.OrderDate > (select '2025-01-10')

--14 Create a subquery to calculate the total number of items sold in a particular purchase.

select SalesID,(select SUM(SalesAmount) from Sales where SalesID = s.SalesID) as total_sold
from Sales s
where SalesID = 10

--15 Write a query to list staff members who have been employed for more than 5 years.

--?? no such table

--16 Use a correlated subquery to list staff members who earn more than the average salary in their division.

--?? no such table

--17 Write a query using the EXISTS operator to list purchases that include an item from the Items table.

--??

--18 Create a subquery to find clients who have made a purchase within the last 30 days.

select * from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where o.OrderDate > (select DATEADD(DAY, -30, max(o2.OrderDate)) from Orders o2) and o.OrderDate < (select max(OrderDate) from Orders)

--19 Write a query using a subquery to identify the oldest item in the Items table.

select p.ProductID, p.ProductName, p.Price, s.SalesAmount, s.SalesDate from Products p
inner join Sales s on p.ProductID = s.ProductID
where s.SalesDate = (select max(SalesDate) from Sales)

--20 Write a query to list staff members who are not assigned to any division.

-- ?? no such table

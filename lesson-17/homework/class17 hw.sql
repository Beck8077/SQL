DROP TABLE IF EXISTS Customers CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    City VARCHAR(100)
);

INSERT INTO Customers (CustomerID, CustomerName, City) VALUES
(1, 'John Doe', 'New York'),
(2, 'Jane Smith', 'Los Angeles'),
(3, 'James Brown', 'Chicago'),
(4, 'Mary Johnson', 'Houston'),
(5, 'Linda Williams', 'Phoenix'),
(6, 'Michael Jones', 'Philadelphia'),
(7, 'Robert Miller', 'San Antonio'),
(8, 'Patricia Davis', 'San Diego'),
(9, 'William Mart?nez', 'Dallas'),
(10, 'Jennifer Garc?a', 'San Jose'),
(11, 'David Lopez', 'Austin'),
(12, 'Helen Harris', 'Jacksonville'),
(13, 'Charles Taylor', 'Fort Worth'),
(14, 'Nancy Allen', 'Columbus'),
(15, 'Edward Clark', 'Indianapolis'),
(16, 'Sarah Lewis', 'Charlotte'),
(17, 'Jessica Young', 'San Francisco'),
(18, 'Kevin White', 'Seattle'),
(19, 'Laura King', 'Denver'),
(20, 'Joseph Scott', 'Washington'),
(21, 'Karen Adams', 'Boston'),
(22, 'James Nelson', 'El Paso'),
(23, 'Christopher Perez', 'Detroit'),
(24, 'Matthew Hill', 'Memphis'),
(25, 'Rachel Jackson', 'Baltimore'),
(26, 'Daniel Walker', 'Las Vegas'),
(27, 'Ashley Young', 'Louisville'),
(28, 'Helen Anderson', 'Milwaukee'),
(29, 'Brian Wright', 'Portland'),
(30, 'Michael Green', 'Oklahoma City'),
(31, 'Jessica Hall', 'Tucson'),
(32, 'Joshua Carter', 'New Orleans'),
(33, 'Sarah Mitchell', 'Bakersfield'),
(34, 'George Perez', 'Tampa'),
(35, 'Rachel Collins', 'Honolulu'),
(36, 'John Rivera', 'Orlando'),
(37, 'Susan Wood', 'St. Louis'),
(38, 'David Harris', 'Minneapolis'),
(39, 'Kevin Walker', 'Cleveland'),
(40, 'Laura Green', 'Birmingham');

DROP TABLE IF EXISTS Orders CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO Orders (OrderID, CustomerID, OrderAmount, OrderDate) VALUES
(1, 1, 250.00, '2025-01-01'),
(2, 2, 450.00, '2025-01-02'),
(3, 3, 120.00, '2025-01-03'),
(4, 4, 340.00, '2025-01-04'),
(5, 5, 500.00, '2025-01-05'),
(6, 6, 200.00, '2025-01-06'),
(7, 7, 750.00, '2025-01-07'),
(8, 8, 300.00, '2025-01-08'),
(9, 9, 600.00, '2025-01-09'),
(10, 10, 400.00, '2025-01-10'),
(11, 11, 250.00, '2025-01-11'),
(12, 12, 550.00, '2025-01-12'),
(13, 13, 350.00, '2025-01-13'),
(14, 14, 600.00, '2025-01-14'),
(15, 15, 200.00, '2025-01-15'),
(16, 16, 700.00, '2025-01-16'),
(17, 17, 450.00, '2025-01-17'),
(18, 18, 550.00, '2025-01-18'),
(19, 19, 500.00, '2025-01-19'),
(20, 20, 400.00, '2025-01-20'),
(21, 21, 700.00, '2025-01-21'),
(22, 22, 150.00, '2025-01-22'),
(23, 23, 600.00, '2025-01-23'),
(24, 24, 250.00, '2025-01-24'),
(25, 25, 550.00, '2025-01-25'),
(26, 26, 120.00, '2025-01-26'),
(27, 27, 600.00, '2025-01-27'),
(28, 28, 500.00, '2025-01-28'),
(29, 29, 450.00, '2025-01-29'),
(30, 30, 300.00, '2025-01-30'),
(31, 31, 350.00, '2025-02-01'),
(32, 32, 400.00, '2025-02-02'),
(33, 33, 600.00, '2025-02-03'),
(34, 34, 450.00, '2025-02-04'),
(35, 35, 300.00, '2025-02-05'),
(36, 36, 500.00, '2025-02-06'),
(37, 37, 400.00, '2025-02-07'),
(38, 38, 250.00, '2025-02-08'),
(39, 39, 650.00, '2025-02-09'),
(40, 40, 200.00, '2025-02-10');

DROP TABLE IF EXISTS Products CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 800.00),
(2, 'Smartphone', 600.00),
(3, 'Headphones', 100.00),
(4, 'Keyboard', 30.00),
(5, 'Mouse', 20.00),
(6, 'Monitor', 250.00),
(7, 'Printer', 150.00),
(8, 'Tablet', 350.00),
(9, 'Smartwatch', 120.00),
(10, 'Speaker', 50.00),
(11, 'Refrigerator', 500.00),
(12, 'Washing Machine', 400.00),
(13, 'Microwave', 120.00),
(14, 'Blender', 60.00),
(15, 'Air Conditioner', 250.00),
(16, 'Hair Dryer', 30.00),
(17, 'Vacuum Cleaner', 150.00),
(18, 'Coffee Maker', 90.00),
(19, 'Toaster', 40.00),
(20, 'Iron', 25.00),
(21, 'Shirt', 30.00),
(22, 'Jeans', 40.00),
(23, 'Jacket', 60.00),
(24, 'Sweater', 50.00),
(25, 'T-shirt', 20.00),
(26, 'Shoes', 80.00),
(27, 'Socks', 10.00),
(28, 'Sneakers', 100.00),
(29, 'Boots', 120.00),
(30, 'Hat', 15.00),
(31, 'Sunglasses', 25.00),
(32, 'Bag', 50.00),
(33, 'Belt', 30.00),
(34, 'Wallet', 20.00),
(35, 'Watch', 100.00),
(36, 'Ring', 150.00),
(37, 'Necklace', 120.00),
(38, 'Bracelet', 80.00),
(39, 'Earrings', 40.00),
(40, 'Perfume', 60.00);

DROP TABLE IF EXISTS Sales CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SalesDate DATE
);

INSERT INTO Sales (SalesID, ProductID, SalesAmount, SalesDate) VALUES
(1, 1, 200.00, '2025-01-01'),
(2, 2, 500.00, '2025-01-02'),
(3, 3, 80.00, '2025-01-03'),
(4, 4, 20.00, '2025-01-04'),
(5, 5, 15.00, '2025-01-05'),
(6, 6, 200.00, '2025-01-06'),
(7, 7, 120.00, '2025-01-07'),
(8, 8, 350.00, '2025-01-08'), 
(9, 9, 110.00, '2025-01-09'), 
(10, 10, 50.00, '2025-01-10'), 
(11, 11, 500.00, '2025-01-11'),
(12, 12, 350.00, '2025-01-12'), 
(13, 13, 100.00, '2025-01-13'),
(14, 14, 60.00, '2025-01-14'), 
(15, 15, 200.00, '2025-01-15'),
(16, 16, 30.00, '2025-01-16'),
(17, 17, 150.00, '2025-01-17'), 
(18, 18, 90.00, '2025-01-18'), 
(19, 19, 40.00, '2025-01-19'), 
(20, 20, 20.00, '2025-01-20'), 
(21, 21, 30.00, '2025-01-21'), 
(22, 22, 40.00, '2025-01-22'), 
(23, 23, 60.00, '2025-01-23'), 
(24, 24, 50.00, '2025-01-24'), 
(25, 25, 150.00, '2025-01-25'), 
(26, 26, 100.00, '2025-01-26'), 
(27, 27, 100.00, '2025-01-27'), 
(28, 28, 90.00, '2025-01-28'), 
(29, 29, 80.00, '2025-01-29'), 
(30, 30, 70.00, '2025-01-30'), 
(31, 31, 50.00, '2025-02-01'), 
(32, 32, 60.00, '2025-02-02'), 
(33, 33, 120.00, '2025-02-03'), 
(34, 34, 150.00, '2025-02-04'), 
(35, 35, 200.00, '2025-02-05'), 
(36, 36, 40.00, '2025-02-06'), 
(37, 37, 80.00, '2025-02-07'), 
(38, 38, 60.00, '2025-02-08'), 
(39, 39, 100.00, '2025-02-09'),
(40, 40, 120.00, '2025-02-10');


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

-- No such info

--13 Write a subquery to list all purchases that were made after a specified date.

select * from Orders O
where O.OrderDate > (select '2025-01-10')

--14 Create a subquery to calculate the total number of items sold in a particular purchase.

select SalesID,(select SUM(SalesAmount) from Sales where SalesID = s.SalesID) as total_sold
from Sales s
where SalesID = 10

--15 Write a query to list staff members who have been employed for more than 5 years.

--No such info

--16 Use a correlated subquery to list staff members who earn more than the average salary in their division.

--No such info

--17 Write a query using the EXISTS operator to list purchases that include an item from the Items table.

--No such info

--18 Create a subquery to find clients who have made a purchase within the last 30 days.

select * from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where o.OrderDate > (select DATEADD(DAY, -30, max(o2.OrderDate)) from Orders o2) and o.OrderDate < (select max(OrderDate) from Orders)

--19 Write a query using a subquery to identify the oldest item in the Items table.

select p.ProductID, p.ProductName, p.Price, s.SalesAmount, s.SalesDate from Products p
inner join Sales s on p.ProductID = s.ProductID
where s.SalesDate = (select max(SalesDate) from Sales)

--20 Write a query to list staff members who are not assigned to any division.

-- No such info


--Medium Tasks

-- 1 Use a correlated subquery to find all staff who work in the same division as any staff member earning over $100,000.

-- no such info

-- 2 Write a query to list all staff members who have the highest salary in their division using a subquery.

-- no such info

-- 3 Create a subquery to list all clients who have made purchases but have never bought an item priced above $200.

select c.CustomerID, c.CustomerName, o.OrderAmount, o.OrderDate from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where c.CustomerID in (select OrderID from Orders where OrderAmount <= 200)

-- 4 Write a query that uses a correlated subquery to find items that have been ordered more frequently than the average item.



-- 5 Write a subquery to list clients who have placed more than 3 purchases.

select e.EmployeeID, e.EmployeeName, o.OrderID from Employees e
inner join Orders o on e.EmployeeID = o.CustomerID
where e.EmployeeID in (select CustomerID from Orders group by CustomerID having count(OrderID) > 3)

-- 6 Use a subquery to calculate the number of items ordered in the last 30 days by each client.



-- 7 Create a correlated subquery to list staff whose salary exceeds the average salary of all staff in their division.

-- no such info

--8 Write a query that uses a subquery to list items that have never been ordered.

select p.ProductID, p.ProductName, s.SalesAmount, s.SalesDate from Products p
inner join Sales s on p.ProductID = s.ProductID
where p.ProductID not in (select SalesID from Sales)

-- 9 Create a subquery to list all vendors who supply items priced above the average price of items.

select * from Products
where Price > (select AVG(Price) from Products)

-- 10 Write a subquery to compute the total sales for each item in the past year.

-- no such info

-- 11 Write a correlated subquery to list staff members older than the overall average age of the company.

-- no such info

-- 12 Write a query to list items with a price greater than the average price in the Items table.

select * from Products
where Price > (select AVG(Price) from Products)

-- 13 Use a subquery to find clients who have purchased items from a specific category.

-- no such info

-- 14 Create a subquery to list all items with a quantity available greater than the average stock level.

-- no such info

-- 15 Write a correlated subquery to list all staff who work in the same division as those who have received a bonus.

-- no such info

-- 16 Write a query using a subquery to list staff members with salaries in the top 10% of all staff.

-- no such info

-- 17 Create a correlated subquery to identify the division that employs the most staff.

-- no such info

-- 18 Write a subquery to find the purchase with the highest total value.

select OrderID, OrderAmount, OrderAmount from Orders
where OrderAmount = (select max(OrderAmount) from Orders)

-- 19 Use a correlated subquery to list staff who earn more than the average salary of their division and have more than 5 years of service.

-- no such info

-- 20 Create a query to list clients who have never purchased an item with a price higher than $100.

select c.CustomerID, c.CustomerName, o.OrderAmount, o.OrderDate from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where o.OrderAmount in (select OrderAmount from Orders where OrderAmount <= 100)


-- Difficult tasks

-- 1 Write a correlated subquery to list all staff who earn more than the average salary in their division, excluding the staff member with the highest salary in that division.

-- no such info

-- 2 Use a subquery to list items that have been purchased by clients who have placed more than 5 orders.

select o.OrderID, o.OrderAmount, c.CustomerName  from Orders o
inner join Customers c on o.CustomerID = c.CustomerID
where c.CustomerID in (select OrderID from Orders group by OrderID having COUNT(OrderID) > 5  )

-- 3 Create a query to list all staff who are older than the overall average age and earn more than the average company salary.

-- no such info

-- 4 Use a correlated subquery to list staff who work in a division that has more than 5 staff members earning over $100,000.

-- no such info

-- 5 Write a subquery to list all items that have not been purchased by any client in the past year.

select * from Customers c
inner join Orders o on c.CustomerID = o.CustomerID
where c.CustomerID not in (select CustomerID from Orders)

-- 6 Create a query to list all clients who have made purchases that include items from at least two different categories.

-- no such info

-- 7 Write a correlated subquery to list staff who earn more than the average salary of staff in the same job position.

-- no such info

-- 8 Use a subquery to list items that are in the top 10% by price among all items.



-- 9 Write a query that uses a correlated subquery to list staff whose salary is in the top 10% within their division.

-- no such info

-- 10 Create a subquery to list all staff who have not received any bonus in the last 6 months.

-- no such info

-- 11 Use a correlated subquery to list items that have been ordered more frequently than the average number of orders per item.

select p.ProductID, p.ProductName, s.SalesAmount, s.SalesDate from Products p
inner join Sales s on p.ProductID = s.ProductID
where s.SalesAmount > (select AVG(SalesAmount) from Sales)

-- 12 Write a subquery to list all clients who made purchases last year for items priced above the average price.

select c.CustomerID, c.CustomerName, o.OrderDate from Customers c
inner join Orders o on c.CustomerID = o.OrderID
where o.OrderDate between '2024-01-01' and '2024-12-31' 
and OrderAmount > (select avg(OrderAmount) from Orders)

-- 13 Write a query to identify the division with the highest average salary using a correlated subquery.

-- no such info

-- 14 Create a subquery to list items that have been purchased by clients who have placed more than 10 orders.

-- no such info

-- 15 Use a correlated subquery to list staff who work in the division with the highest total sales.

-- no such info

-- 16 Write a subquery to list staff whose salary is in the top 5% of the entire company.

-- no such info

-- 17 Write a query to list items that have not been purchased by any client in the past month.

select o.CustomerID, c.CustomerName, o.OrderDate from Orders o 
inner join Customers c on o.CustomerID = c.CustomerID
where OrderDate not in (select OrderDate from Orders where OrderDate <= DATEADD(MONTH, -1, GETDATE()))

-- 18 Use a correlated subquery to list staff who work in the same division as staff members with the highest purchase totals.

-- no such info

-- 19 Create a subquery to list clients who have not made any purchases in the last 6 months and have spent less than $100.

select * from Orders o
inner join Customers c on o.CustomerID = c.CustomerID
where o.OrderID not in (select OrderID from Orders where OrderDate >= DATEADD(MONTH, -6, GETDATE()) and OrderAmount >= 100)

-- 20 Write a query to list all staff who have been employed for more than 10 years and have made purchases for items worth more than $1,000.

-- no such info
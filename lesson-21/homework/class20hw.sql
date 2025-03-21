--create database class20_hw


CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1, 500.00, '2025-01-01'),
(2, 2, 2, 1200.00, '2025-01-02'),
(3, 3, 3, 800.00, '2025-01-03'),
(4, 4, 4, 1500.00, '2025-01-04'),
(5, 5, 5, 300.00, '2025-01-05'),
(6, 6, 6, 1000.00, '2025-01-06'),
(7, 7, 7, 850.00, '2025-01-07'),
(8, 8, 8, 500.00, '2025-01-08'),
(9, 9, 9, 600.00, '2025-01-09'),
(10, 10, 10, 450.00, '2025-01-10'),
(11, 11, 11, 700.00, '2025-01-11'),
(12, 12, 12, 800.00, '2025-01-12'),
(13, 13, 13, 1200.00, '2025-01-13'),
(14, 14, 14, 1500.00, '2025-01-14'),
(15, 15, 15, 950.00, '2025-01-15'),
(16, 16, 16, 600.00, '2025-01-16'),
(17, 17, 17, 700.00, '2025-01-17'),
(18, 18, 18, 1100.00, '2025-01-18'),
(19, 19, 19, 500.00, '2025-01-19'),
(20, 20, 20, 400.00, '2025-01-20'),
(21, 21, 21, 800.00, '2025-01-21'),
(22, 22, 22, 650.00, '2025-01-22'),
(23, 23, 23, 700.00, '2025-01-23'),
(24, 24, 24, 1200.00, '2025-01-24'),
(25, 25, 25, 500.00, '2025-01-25'),
(26, 26, 26, 850.00, '2025-01-26'),
(27, 27, 27, 600.00, '2025-01-27'),
(28, 28, 28, 1200.00, '2025-01-28'),
(29, 29, 29, 700.00, '2025-01-29'),
(30, 30, 30, 450.00, '2025-01-30'),
(31, 31, 31, 800.00, '2025-02-01'),
(32, 32, 32, 1200.00, '2025-02-02'),
(33, 33, 33, 900.00, '2025-02-03'),
(34, 34, 34, 600.00, '2025-02-04'),
(35, 35, 35, 950.00, '2025-02-05'),
(36, 36, 36, 1000.00, '2025-02-06'),
(37, 37, 37, 700.00, '2025-02-07'),
(38, 38, 38, 850.00, '2025-02-08'),
(39, 39, 39, 600.00, '2025-02-09'),
(40, 40, 40, 500.00, '2025-02-10');

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    Salary DECIMAL(10, 2),
    EmployeeName VARCHAR(100)
);

INSERT INTO Employees (EmployeeID, DepartmentID, Salary, EmployeeName) VALUES
(1, 1, 55000.00, 'John Doe'),
(2, 2, 60000.00, 'Jane Smith'),
(3, 1, 45000.00, 'James Brown'),
(4, 3, 70000.00, 'Mary Johnson'),
(5, 2, 75000.00, 'Linda Williams'),
(6, 3, 80000.00, 'Michael Jones'),
(7, 1, 65000.00, 'Robert Miller'),
(8, 4, 58000.00, 'Patricia Davis'),
(9, 5, 68000.00, 'William Martínez'),
(10, 4, 52000.00, 'Jennifer García'),
(11, 3, 54000.00, 'David Lopez'),
(12, 2, 63000.00, 'Helen Harris'),
(13, 1, 46000.00, 'Charles Taylor'),
(14, 5, 55000.00, 'Nancy Allen'),
(15, 4, 60000.00, 'Edward Clark'),
(16, 1, 50000.00, 'Sarah Lewis'),
(17, 2, 70000.00, 'Jessica Young'),
(18, 3, 76000.00, 'Kevin White'),
(19, 4, 67000.00, 'Laura King'),
(20, 5, 59000.00, 'Joseph Scott'),
(21, 1, 61000.00, 'Karen Adams'),
(22, 3, 54000.00, 'James Nelson'),
(23, 2, 58000.00, 'Christopher Perez'),
(24, 1, 65000.00, 'Matthew Hill'),
(25, 3, 49000.00, 'Rachel Jackson'),
(26, 5, 64000.00, 'Daniel Walker'),
(27, 4, 57000.00, 'Ashley Young'),
(28, 1, 60000.00, 'Helen Anderson'),
(29, 2, 63000.00, 'Brian Wright'),
(30, 5, 52000.00, 'Michael Green'),
(31, 1, 67000.00, 'Jessica Hall'),
(32, 4, 55000.00, 'Joshua Carter'),
(33, 2, 72000.00, 'Sarah Mitchell'),
(34, 3, 46000.00, 'George Perez'),
(35, 5, 50000.00, 'Rachel Collins'),
(36, 1, 54000.00, 'John Rivera'),
(37, 4, 56000.00, 'Orlando Robinson'),
(38, 3, 65000.00, 'Luis Davis'),
(39, 2, 68000.00, 'Barbara Moore'),
(40, 1, 71000.00, 'David Harris');

CREATE TABLE Products (
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
(23, 'Shoes', 70.00),
(24, 'Socks', 5.00),
(25, 'Jacket', 100.00),
(26, 'T-shirt', 20.00),
(27, 'Sweater', 50.00), (28, 'Shorts', 30.00), (29, 'Hat', 15.00), (30, 'Gloves', 20.00), (31, 'Backpack', 60.00), (32, 'Wallet', 25.00), (33, 'Sunglasses', 40.00), (34, 'Scarf', 15.00), (35, 'Belt', 25.00), (36, 'Watch', 120.00), (37, 'Ring', 50.00), (38, 'Necklace', 80.00), (39, 'Earrings', 30.00), (40, 'Bracelet', 20.00);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderAmount DECIMAL(10, 2),
    OrderDate DATE
);

INSERT INTO Orders (OrderID, CustomerID, OrderAmount, OrderDate) VALUES
(1, 1, 550.00, '2025-01-01'),
(2, 2, 700.00, '2025-01-02'),
(3, 3, 450.00, '2025-01-03'),
(4, 4, 800.00, '2025-01-04'),
(5, 5, 1200.00, '2025-01-05'),
(6, 6, 950.00, '2025-01-06'),
(7, 7, 700.00, '2025-01-07'),
(8, 8, 600.00, '2025-01-08'),
(9, 9, 800.00, '2025-01-09'),
(10, 10, 700.00, '2025-01-10'),
(11, 11, 650.00, '2025-01-11'),
(12, 12, 550.00, '2025-01-12'),
(13, 13, 450.00, '2025-01-13'),
(14, 14, 600.00, '2025-01-14'),
(15, 15, 550.00, '2025-01-15'),
(16, 16, 600.00, '2025-01-16'),
(17, 17, 800.00, '2025-01-17'),
(18, 18, 1000.00, '2025-01-18'),
(19, 19, 700.00, '2025-01-19'),
(20, 20, 600.00, '2025-01-20'),
(21, 21, 500.00, '2025-01-21'),
(22, 22, 450.00, '2025-01-22'),
(23, 23, 700.00, '2025-01-23'),
(24, 24, 650.00, '2025-01-24'),
(25, 25, 600.00, '2025-01-25'),
(26, 26, 700.00, '2025-01-26'),
(27, 27, 800.00, '2025-01-27'),
(28, 28, 950.00, '2025-01-28'),
(29, 29, 1000.00, '2025-01-29'),
(30, 30, 700.00, '2025-01-30'),
(31, 31, 600.00, '2025-02-01'),
(32, 32, 550.00, '2025-02-02'),
(33, 33, 450.00, '2025-02-03'),
(34, 34, 600.00, '2025-02-04'),
(35, 35, 650.00, '2025-02-05'),
(36, 36, 700.00, '2025-02-06'),
(37, 37, 800.00, '2025-02-07'),
(38, 38, 750.00, '2025-02-08'),
(39, 39, 900.00, '2025-02-09'),
(40, 40, 950.00, '2025-02-10');

-- 1 

select *, ROW_NUMBER() over(order by Salary) as row_num from Employees

-- 2 

select *, RANK() over(order by Price desc) from Products

-- 3 

select *, DENSE_RANK() over(order by Salary) from Employees

-- 4 

select *, LEAD(DepartmentID) over(order by (select 1)) from Employees

-- 5 

select *, ROW_NUMBER() over(order by OrderDate) from Orders

-- 6 

select EmployeeID, EmployeeName, Salary, T from (
select EmployeeID, EmployeeName, Salary, RANK() over(order by Salary desc) as T from Employees
) A
where T <= 2

-- 7 

select *, LAG(Salary) over(order by (select 1)) from Employees

-- 8 

select *, NTILE(4) over(order by Salary desc) from Employees

-- 9 

select *, ROW_NUMBER() over(partition by DepartmentID order by DepartmentID) from Employees

-- 10 

select *, DENSE_RANK() over(order by Price asc) from Products

-- 11 

select *, AVG(Price) over(order by ProductID rows between 2 preceding and current row) from Products

-- 12 

select *, LEAD(Salary) over(order by EmployeeID) from Employees

--13 

select *, SUM(SalesAmount) over(order by SaleDate) from Sales

-- 14 

select * from (
select *, ROW_NUMBER() over(order by Price desc) as Rating from Products) A
where Rating <= 5

-- 15 

select *, SUM(OrderAmount) over(partition by CustomerID order by CustomerID) from Orders

-- 16 

select *, RANK() over(order by OrderAmount) from Orders

-- 17 Write a query to compute the percentage contribution of SalesAmount by ProductCategory in the Sales table.

select * from Sales

-- 18 

select *, LEAD(OrderDate) over(order by OrderDate) from Orders

-- 19 Write a query using NTILE(3) to divide employees into 3 groups based on their Age.

select *, NTILE(3) over(partition by Age order by Age) from Employees

-- 20 Use ROW_NUMBER() to list the most recently hired employees from the Employees table.

select *, ROW_NUMBER() over(order by HireDate desc) from Employees


-- Medium tasks

-- 1 

select *, SUM(SalesAmount) over(order by EmployeeID) from Sales

-- 2 

select OrderID, 
     OrderAmount, 
     OrderDate, 
     LEAD(OrderAmount) over(order by OrderDate) as A,
     OrderAmount - isnull(Lead(OrderAmount) over(order by OrderDate), 0) as B from Orders

--3 

select SalesID, ProductID, SalesAmount, SaleDate, A from (
select SalesID, ProductID, SalesAmount, SaleDate, ROW_NUMBER() over(order by SalesAmount desc) as A from Sales) as B
where A <= 5

-- 4 

select * from (
select *, RANK() over(order by Price desc) as A from Products) B
where A <= 10

-- 5 

select *, COUNT(*) over(partition by ProductID order by ProductID) from Sales

-- 6 

select SalesID, 
     ProductID, 
     SalesAmount, 
     SaleDate, 
     SUM(SalesAmount) over(order by ProductID rows between unbounded preceding and current row) as A from Sales

-- 7 

select *, DENSE_RANK() over(partition by DepartmentID order by EmployeeID) as DepartmentRank from Employees

-- 8 

select *, AVG(SalesAmount) over(order by SalesID rows between unbounded preceding and current row) from Sales

-- 9 

select *, NTILE(3) over(partition by Price order by ProductID) from Products

-- 10 

select *, LAG(SalesAmount) over(order by EmployeeID) from Sales

-- 11 

select *, SUM(SalesAmount) over(order by SaleDate rows between unbounded preceding and current row) from Sales

-- 12  

select *, LEAD(SalesAmount) over(order by SaleDate) from Sales

-- 13 

select p.ProductID, 
     p.ProductName, 
     p.Price, 
     s.SaleDate, 
     s.SalesAmount, 
     SUM(s.SalesAmount) over(order by s.SaleDate rows between 2 preceding and current row) 
from Products p
inner join Sales s on p.ProductID = s.ProductID

-- 14 

select * from (
select *, RANK() over(order by Salary desc) as A from Employees) B
where A <= 3

-- 15 Write a query using AVG() to calculate the average order amount for each customer in the Orders table.

select *, AVG(OrderAmount) over(order by CustomerID) from Orders

-- 16 Use ROW_NUMBER() to assign a unique row number to orders in the Orders table, ordered by OrderDate.

select *, ROW_NUMBER() over(order by OrderDate) UniqueRowNumber from Orders

-- 17 

select s.SalesID, 
     e.DepartmentID,
     s.SaleDate,  
     s.SalesAmount, 
     e.EmployeeName, 
     SUM(SalesAmount) over(partition by e.DepartmentID order by s.SaleDate rows between unbounded preceding and current row) RunningTotal from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 18 

select *, NTILE(5) over(order by Salary) from Employees

-- 19 

select *, 
     SUM(SalesAmount) over(order by SaleDate rows between unbounded preceding and current row),
     SUM(SalesAmount) over(partition by ProductID order by (select 1))
     from Sales

-- 20 

select * from (
select *, DENSE_RANK() over(order by SalesAmount desc) A from Sales) B
where A <= 5


-- Difficult Tasks

-- 1 

select *, SUM(SalesAmount) over(order by ProductID rows between unbounded preceding and current row) from Sales

-- 2 

select *, (LEAD(OrderAmount) over(order by OrderDate) - OrderAmount) / OrderAmount * 100 from Orders

-- 3 Write a query using ROW_NUMBER() to return the top 3 products by SalesAmount, ensuring ties are handled appropriately.



-- 4 

select *, RANK() over(partition by DepartmentID order by Salary) from Employees

-- 5 

select * from (
select *, NTILE(10) over(order by OrderAmount desc) A from Orders) B
where A = 1

-- 6 

select *, (SalesAmount - LAG(SalesAmount) over(order by SaleDate)) from Sales

-- 7 

select *, AVG(SalesAmount) over(order by SaleDate rows between unbounded preceding and current row) from Sales

-- 8 

select TOP 5 s.SalesAmount, p.ProductID, p.ProductName, DENSE_RANK() over(order by s.SalesAmount desc) from Products p
inner join Sales s on p.ProductID = s.ProductID

-- 9 Write a query to partition the Sales table by ProductCategory and calculate the running total of SalesAmount for each category.

select *, SUM(SalesAmount) over(partition by ProductID order by SaleDate rows between unbounded preceding and current row) from Sales

-- 10 

select *, LEAD(OrderAmount) over(order by OrderDate) - LAG(OrderAmount) over(order by OrderDate) from Orders

-- 11 

select s.EmployeeID, s.SaleDate, e.EmployeeName, SUM(SalesAmount) over(order by SaleDate rows between unbounded preceding and current row) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 12 Use NTILE(10) to divide the products in the Products table into 10 groups based on Price.

select *, NTILE(10) over(order by Price) from Products

-- 13 Write a query to compute the moving average of OrderAmount in the Orders table using AVG() and an appropriate window frame.

select *, AVG(OrderAmount) over(order by OrderDate rows between unbounded preceding and current row) from Orders

-- 14 Use ROW_NUMBER() to rank employees by Salary within each department in the Employees table.

select *, ROW_NUMBER() over(partition by DepartmentID order by Salary) from Employees

-- 15 Write a query using COUNT() to calculate the number of orders per customer in the Orders table.

select *, COUNT(OrderID) over(partition by CustomerID order by CustomerID) from Orders 

-- 16 Use RANK() to identify the products with the top 3 highest sales numbers in the Sales table, considering ties.

select * from (
select *, RANK() over(order by SalesAmount desc) A from Sales) B
where A <= 3

-- 17 Write a query to compute the cumulative sales total for each employee and product in the Sales table.

select s.EmployeeID, s.SaleDate, e.EmployeeName, s.SalesAmount, SUM(SalesAmount) over(partition by e.EmployeeID order by e.EmployeeID) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 18 Use DENSE_RANK() to identify the employees with the highest sales within each department in the Sales table.

select e.DepartmentID, e.EmployeeName, s.SaleDate, s.SalesAmount, DENSE_RANK() over(partition by e.DepartmentID order by s.SalesAmount desc) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 19 Write a query to partition the Sales table by StoreID and calculate the cumulative total of SalesAmount for each store.

-- no such info

-- 20 Use LAG() to calculate the difference in SalesAmount for each product between the previous and current sale in the Sales table.

select *, LAG(SalesAmount) over(order by SalesID), SalesAmount - LAG(SalesAmount) over(order by SalesID) from Sales
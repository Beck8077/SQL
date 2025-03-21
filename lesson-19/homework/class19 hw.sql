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
(9, 5, 68000.00, 'William Mart?nez'),
(10, 4, 52000.00, 'Jennifer Garc?a'),
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


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'Sales'),
(2, 'Marketing'),
(3, 'Operations'),
(4, 'Finance'),
(5, 'HR');


CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    EmployeeID INT,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SalesDate DATE
);

INSERT INTO Sales (SalesID, EmployeeID, ProductID, SalesAmount, SalesDate) VALUES
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
(22, 'Jeans', 40.00), (23, 'Shoes', 70.00), (24, 'Socks', 5.00), (25, 'Jacket', 100.00), (26, 'T-shirt', 20.00), (27, 'Sweater', 50.00), (28, 'Shorts', 30.00), (29, 'Hat', 15.00), (30, 'Gloves', 20.00), (31, 'Backpack', 60.00), (32, 'Wallet', 25.00), (33, 'Sunglasses', 40.00), (34, 'Scarf', 15.00), (35, 'Belt', 25.00), (36, 'Watch', 120.00), (37, 'Ring', 50.00), (38, 'Necklace', 80.00), (39, 'Earrings', 30.00), (40, 'Bracelet', 20.00);


-- Easy tasks

-- 1 Write a query to assign a row number to each employee in the Employees table ordered by their Salary.

select *, ROW_NUMBER() over(order by Salary) from Employees

-- 2 Create a query to rank all products based on their Price in descending order.

select *, RANK() over(order by Price desc) from Products

-- 3 Use the DENSE_RANK() function to rank employees by Salary in the Employees table.

select *, DENSE_RANK() over(order by Salary) from Employees

-- 4 Write a query to display the next (lead) salary for each employee in the same department using the LEAD() function.

select *, LEAD(Salary) over(partition by DepartmentID order by DepartmentID) from Employees

-- 5 Use ROW_NUMBER() to assign a unique number to each order in the Orders table.

select *, ROW_NUMBER() over(order by SalesID) from Sales

-- 6 Create a query using RANK() to identify the highest and second-highest salaries in the Employees table.

select * from (
select EmployeeID, Salary, EmployeeName, RANK() over(order by Salary desc) A from Employees) B
where A <= 2

-- 7 Write a query to show the previous (lagged) salary for each employee in the Employees table using the LAG() function.

select *, LAG(Salary) over(order by EmployeeID) from Employees

-- 8 Use NTILE(4) to divide employees into 4 groups based on their Salary.

select *, NTILE(4) over(order by Salary) from Employees

-- 9 Write a query to partition employees by DepartmentID and assign a row number within each department.

select *, ROW_NUMBER() over(partition by DepartmentID order by DepartmentID) from Employees

-- 10 Use DENSE_RANK() to rank products by Price in ascending order.

select *, DENSE_RANK() over(order by Price) from Products

-- 11 Write a query to calculate the moving average of Price in the Products table using window functions.

select *, AVG(Price) over(order by ProductID rows between unbounded preceding and current row) from Products

-- 12 Use the LEAD() function to display the salary of the next employee for each row in the Employees table.

select *, LEAD(Salary) over(order by EmployeeID) from Employees


-- 13 Create a query to compute the cumulative sum of SalesAmount in the Sales table.

select *, SUM(SalesAmount) over(order by SalesID) from Sales

-- 14 Use ROW_NUMBER() to identify the top 5 most expensive products in the Products table.

select * from (
select *, ROW_NUMBER() over(order by Price desc) A from Products) B
where A < 6

-- 15 Write a query to partition the Orders table by CustomerID and calculate the total OrderAmount per customer.

select s.EmployeeID, e.EmployeeName, s.SalesDate, SUM(s.SalesAmount) over(partition by s.EmployeeID order by s.EmployeeID) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 16 Use RANK() to rank orders in the Orders table based on their OrderAmount.

select *, RANK() over(order by SalesAmount) from Sales

-- 17 Write a query to compute the percentage contribution of SalesAmount by ProductCategory in the Sales table.

select P.ProductID, SUM(S.SalesAmount), SUM(S.SalesAmount) * 100.0 / SUM(SUM(S.SalesAmount)) over(order by (select 1)) as PercentageContribution
from Sales S
inner join Products P on S.ProductID = P.ProductID
GROUP BY P.ProductID

-- 18 Use the LEAD() function to retrieve the next order date for each order in the Orders table.

select *, LEAD(SalesDate) over(order by SalesID) from Sales

-- 19 Write a query using NTILE(3) to divide employees into 3 groups based on their Age.

--no such info

-- 20 Use ROW_NUMBER() to list the most recently hired employees from the Employees table.

-- no such info


-- Medium Tasks

-- 1 Write a query to compute the cumulative average salary of employees, ordered by Salary.

select *, AVG(Salary) over(order by Salary) from Employees

-- 2 Use RANK() to rank products by their total sales while handling ties appropriately.



-- 3 Create a query to retrieve the previous order's date for each order in the Orders table using the LAG() function.

select *, LAG(SalesDate) over(order by SalesID) from Sales

-- 4 Write a query to calculate the moving sum of Price for products with a window frame of 3 rows.

select *, sum(Price) over(order by ProductID rows between 3 preceding and current row) from Products

-- 5 Use NTILE(4) to assign employees to four salary ranges and display each employee's salary range.

select *, NTILE(4) over(order by EmployeeID) from Employees

-- 6 Write a query to partition the Sales table by ProductID and calculate the total SalesAmount per product.

select ProductID, SalesDate, SUM(SalesAmount) over(partition by ProductID order by ProductID) from Sales

-- 7 Use DENSE_RANK() to rank products by StockQuantity without gaps in the ranking.

--no such info

-- 8 Create a query using ROW_NUMBER() to identify the second highest salary in each department.

select * from (
select d.DepartmentID, d.DepartmentName, e.EmployeeName, e.Salary, 
	   ROW_NUMBER() over(order by Salary desc) A from Departments d
	   inner join Employees e on d.DepartmentID = e.DepartmentID) B
where A = 2

-- 9 Write a query to calculate the running total of sales for each product in the Sales table.

select *, SUM(SalesAmount) over(order by SalesID rows between unbounded preceding and current row) from Sales

-- 10 Use LEAD() to display the SalesAmount of the next row for each employee’s sale in the Sales table.

select s.EmployeeID, s.SalesAmount, s.SalesDate, e.EmployeeName, LEAD(SalesAmount) over(order by s.EmployeeID) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 11 Use RANK() to determine the highest earners within each department.

select d.DepartmentID, d.DepartmentName, e.EmployeeName, e.Salary, RANK() over(order by d.DepartmentID) from Departments d
inner join Employees e on d.DepartmentID = e.DepartmentID

-- 12 Write a query to partition employees by DepartmentID and rank them by salary.

select *, RANK() over(partition by DepartmentID order by Salary) from Employees

-- 13 Use NTILE(5) to divide products into five groups based on their Price.

select *, NTILE(5) over(order by Price) from Products

-- 14 Write a query to calculate the difference between each employee's salary and the highest salary in their department.

select *, MAX(Salary) over(partition by DepartmentID) MaxSalary, MAX(Salary) over(partition by DepartmentID) - Salary as SalaryDifference from Employees

-- 15 Use LAG() to display the previous product's SalesAmount for each sale.

select *, LAG(SalesAmount) over(order by (select 1)) from Sales

-- 16 Write a query to calculate the cumulative sum of OrderAmount for each customer in the Orders table.

select s.SalesID, e.EmployeeName, s.SalesAmount, s.SalesDate, SUM(SalesAmount) over(order by s.SalesID) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 17 Use ROW_NUMBER() to identify the 3rd most recent order for each customer in the Orders table.

select s.SalesID, e.EmployeeName, s.SalesAmount, s.SalesDate, ROW_NUMBER() over(order by s.SalesDate) from Sales s
inner join Employees e on s.EmployeeID = e.EmployeeID

-- 18 Write a query to partition employees by DepartmentID and rank them by their HireDate within each department.

-- no such info

-- 19 Use DENSE_RANK() to find the 3rd highest Salary in each department from the Employees table.

select e.DepartmentID, e.EmployeeName, d.DepartmentName, e.Salary, DENSE_RANK() over(order by e.DepartmentID) from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID

-- 20 Create a query using LEAD() to calculate the difference in OrderDate between consecutive orders.


-- Difficult tasks

-- 1 Write a query using RANK() to rank products by their sales (handling ties) but exclude the top 10% of products by sales.

select C.ProductID, C.ProductName, C.SalesAmount, A, B from (
select p.ProductID, p.ProductName, s.SalesAmount,
	   RANK() over(order by s.SalesAmount desc) A,
       NTILE(10) over(order by s.SalesAmount desc) B from Products p
	   inner join Sales s on p.ProductID = s.ProductID) C
where B > 1
    

-- 2 Use ROW_NUMBER() to list employees with over 5 years of service, ordered by their HireDate.



-- 3 Write a query using NTILE(10) to divide employees into 10 groups based on Salary and display each employee's group number.

select e.EmployeeName, e.Salary, d.DepartmentName , NTILE(10) over(order by Salary) from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID

-- 4 Use the LEAD() function to calculate the next SalesAmount for each sale by an employee and compare it with the current sale.

select SalesID, SalesAmount, SalesDate, LEAD(SalesAmount) over(order by SalesID), 
		  LEAD(SalesAmount) over(order by SalesID) - SalesAmount from Sales 

-- 5 Write a query to partition products by CategoryID and compute the average Price for each category.

select *, AVG(Price) over(partition by ProductID order by ProductID) from Products

-- 6 Use RANK() to determine the top 3 most-sold products and display their rankings, including handling ties.

select * from (
select p.ProductID, p.ProductName, p.Price, s.SalesAmount, RANK() over(order by s.SalesAmount desc) A from Products p
inner join Sales s on p.ProductID = s.ProductID) B
where A <= 3

-- 7 Create a query using ROW_NUMBER() to list the top 5 highest-paid employees from each department.

select * from (
select *, ROW_NUMBER() over(partition by DepartmentID order by Salary desc) A from Employees) B
where A <= 5

-- 8 Write a query to compute the moving average of sales over a 5-day window using both LEAD() and LAG() functions.



-- 9 Use DENSE_RANK() to find the products with the top 5 highest sales figures, ensuring no gaps in the ranking.

select * from (
select s.ProductID, p.ProductName, s.SalesAmount, s.SalesDate, DENSE_RANK() over(order by s.SalesAmount desc) A from Sales s
inner join Products p on s.ProductID = p.ProductID) B
where A <= 5

-- 10 Write a query using NTILE(4) to partition orders by OrderAmount into four quartiles and display the quartile for each order.

select *, NTILE(4) over(partition by SalesAmount order by SalesAmount) from Sales

-- 11 Use ROW_NUMBER() to assign a unique sequence to each order in the Orders table and display the rank within each CustomerID.

select EmployeeID, SalesAmount, SalesDate, ROW_NUMBER() over(partition by EmployeeID order by EmployeeID) from Sales 

-- 12 Write a query to partition employees by DepartmentID and calculate the total number of employees in each department.

select d.DepartmentName, count(e.EmployeeID) over(partition by d.DepartmentID order by d.DepartmentID) from Departments d
inner join Employees e on d.DepartmentID = e.DepartmentID

-- 13 Use RANK() to list the top 3 highest salaries and the bottom 3 salaries within each department.

select *, 
	CASE 
        WHEN HighestSalary <= 3 THEN 'Top 3 Highest'
        WHEN LowestSalary <= 3 THEN 'Bottom 3 Lowest'
    END AS SalaryCategory from (
select d.DepartmentID, d.DepartmentName, e.Salary, 
	   RANK() over(partition by e.DepartmentID order by e.Salary desc) HighestSalary, 
	   RANK() over(partition by e.DepartmentID order by e.Salary) LowestSalary from Employees e
inner join Departments d on e.DepartmentID = d.DepartmentID) A
where HighestSalary <= 3 or LowestSalary <= 3 
order by A.DepartmentID, SalaryCategory

-- 14 Create a query using LAG() to calculate the percentage change in SalesAmount from the previous sale for each employee.

select SalesID, SalesDate, SalesAmount, (SalesAmount - LAG(SalesAmount) over(order by SalesID)) * 100 / LAG(SalesAmount) over(order by SalesID) from Sales

-- 15 Write a query to compute both the cumulative sum and cumulative average of sales for each product in the Sales table.

select *, SUM(SalesAmount) over(order by SalesID), AVG(SalesAmount) over(order by SalesID) from Sales

-- 16 Use NTILE(3) to rank employees by Age and display the distribution of age groups across the company.

-- no such info

-- 17 Write a query using ROW_NUMBER() to identify the top 10 employees with the highest sales, sorted by SalesAmount.

select * from (
select *, ROW_NUMBER() over(order by SalesAmount desc) A from Sales) B
where A <= 10

-- 18 Use LEAD() to calculate the difference between each product's Price and the Price of the subsequent product in the Products table.

select *, LEAD(Price) over(order by ProductID), Price - LEAD(Price) over(order by ProductID) from Products

-- 19 Create a query using DENSE_RANK() to rank employees based on a performance score and generate a performance report.

-- no such info

-- 20 Write a query using both LAG() and LEAD() to determine the difference in SalesAmount for each product relative to the previous and next orders in the Orders table.

select SalesID, SalesAmount, 
	   LAG(SalesAmount) over(order by SalesID) PreviousSales,
	   LEAD(SalesAmount) over(order by SalesID) NextSales,
	   SalesAmount - LAG(SalesAmount) over(order by SalesID) PrevSalesDiff,
	   LEAD(SalesAmount) over(order by SalesID) - SalesAmount as NextSalesDiff from Sales
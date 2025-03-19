CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'Garc?a', 77000.00),
(10, 1, 'William', 'Mart?nez', 69000.00),
(11, 5, 'Elizabeth', 'Hern?ndez', 95000.00),
(12, 2, 'David', 'Lopez', 88000.00),
(13, 3, 'Joseph', 'Martinez', 74000.00),
(14, 4, 'Susan', 'Rodriguez', 80000.00),
(15, 5, 'Daniel', 'Wilson', 89000.00),
(16, 1, 'Karen', 'Moore', 67000.00),
(17, 2, 'Charles', 'Taylor', 71000.00),
(18, 3, 'Christopher', 'Anderson', 76000.00),
(19, 4, 'Sarah', 'Thomas', 83000.00),
(20, 5, 'Jessica', 'Jackson', 92000.00),
(21, 1, 'Kevin', 'White', 64000.00),
(22, 2, 'Nancy', 'Harris', 78000.00),
(23, 3, 'Steven', 'Clark', 78000.00),
(24, 4, 'Betty', 'Lewis', 79000.00),
(25, 5, 'Ryan', 'Young', 94000.00),
(26, 1, 'Daniel', 'King', 68000.00),
(27, 2, 'Dorothy', 'Scott', 73000.00),
(28, 3, 'Ethan', 'Adams', 77000.00),
(29, 4, 'Megan', 'Baker', 82000.00),
(30, 5, 'Anthony', 'Green', 88000.00),
(31, 1, 'Laura', 'Nelson', 66000.00),
(32, 2, 'Ryan', 'Carter', 71000.00),
(33, 3, 'George', 'Mitchell', 76000.00),
(34, 4, 'Deborah', 'Perez', 79000.00),
(35, 5, 'Brian', 'Roberts', 90000.00),
(36, 1, 'Alice', 'Garcia', 60000.00),
(37, 2, 'Jack', 'Evans', 72000.00),
(38, 3, 'Ashley', 'Gonzalez', 77000.00),
(39, 4, 'Evan', 'Stewart', 80000.00),
(40, 5, 'Sophia', 'King', 93000.00);


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

INSERT INTO Departments (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'Sales'),
(3, 'Marketing'),
(4, 'Finance'),
(5, 'IT'),
(6, 'Operations'),
(7, 'Customer Service'),
(8, 'R&D'),
(9, 'Legal'),
(10, 'Logistics');


CREATE TABLE Sales (
    SalesID INT PRIMARY KEY,
    ProductID INT,
    SalesAmount DECIMAL(10, 2),
    SaleDate DATE
);

INSERT INTO Sales (SalesID, ProductID, SalesAmount, SaleDate) VALUES
(1, 1, 1500.00, '2025-01-01'),
(2, 2, 2000.00, '2025-01-02'),
(3, 3, 1200.00, '2025-01-03'),
(4, 4, 1800.00, '2025-01-04'),
(5, 5, 2200.00, '2025-01-05'),
(6, 6, 1400.00, '2025-01-06'),
(7, 1, 2500.00, '2025-01-07'),
(8, 2, 1700.00, '2025-01-08'),
(9, 3, 1600.00, '2025-01-09'),
(10, 4, 1900.00, '2025-01-10'),
(11, 5, 2100.00, '2025-01-11'),
(12, 6, 1300.00, '2025-01-12'),
(13, 1, 2000.00, '2025-01-13'),
(14, 2, 1800.00, '2025-01-14'),
(15, 3, 1500.00, '2025-01-15'),
(16, 4, 2200.00, '2025-01-16'),
(17, 5, 1700.00, '2025-01-17'),
(18, 6, 1600.00, '2025-01-18'),
(19, 1, 2500.00, '2025-01-19'),
(20, 2, 1800.00, '2025-01-20'),
(21, 3, 1400.00, '2025-01-21'),
(22, 4, 1900.00, '2025-01-22'),
(23, 5, 2100.00, '2025-01-23'),
(24, 6, 1600.00, '2025-01-24'),
(25, 1, 1500.00, '2025-01-25'),
(26, 2, 2000.00, '2025-01-26'),
(27, 3, 2200.00, '2025-01-27'),
(28, 4, 1300.00, '2025-01-28'),
(29, 5, 2500.00, '2025-01-29'),
(30, 6, 1800.00, '2025-01-30'),
(31, 1, 2100.00, '2025-02-01'),
(32, 2, 1700.00, '2025-02-02'),
(33, 3, 1600.00, '2025-02-03'),
(34, 4, 1900.00, '2025-02-04'),
(35, 5, 2000.00, '2025-02-05'),
(36, 6, 2200.00, '2025-02-06'),
(37, 1, 1300.00, '2025-02-07'),
(38, 2, 2500.00, '2025-02-08'),
(39, 3, 1400.00, '2025-02-09'),
(40, 4, 1800.00, '2025-02-10');

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Price DECIMAL(10, 2)
);

INSERT INTO Products (ProductID, ProductName, Price) VALUES
(1, 'Laptop', 1000.00),
(2, 'Smartphone', 800.00),
(3, 'Tablet', 500.00),
(4, 'Monitor', 300.00),
(5, 'Headphones', 150.00),
(6, 'Mouse', 25.00),
(7, 'Keyboard', 50.00),
(8, 'Camera', 400.00),
(9, 'Printer', 150.00),
(10, 'Smartwatch', 200.00),
(11, 'Speakers', 80.00),
(12, 'Flash Drive', 20.00),
(13, 'Hard Drive', 120.00),
(14, 'External Battery', 30.00),
(15, 'Charger', 15.00),
(16, 'Router', 70.00),
(17, 'Graphics Card', 500.00),
(18, 'Processor', 300.00),
(19, 'RAM', 120.00),
(20, 'Motherboard', 150.00),
(21, 'Power Supply', 80.00),
(22, 'Webcam', 40.00),
(23, 'Microphone', 60.00),
(24, 'Projector', 400.00),
(25, 'Electric Fan', 25.00),
(26, 'Air Conditioner', 250.00),
(27, 'Refrigerator', 500.00),
(28, 'Washing Machine', 350.00),
(29, 'Microwave', 100.00),
(30, 'Blender', 80.00),
(31, 'Vacuum Cleaner', 150.00),
(32, 'Coffee Maker', 90.00),
(33, 'Toaster', 40.00),
(34, 'Water Heater', 120.00),
(35, 'Iron', 30.00),
(36, 'Hair Dryer', 40.00),
(37, 'Electric Toothbrush', 50.00),
(38, 'Shaver', 60.00),
(39, 'Electric Kettle', 30.00),
(40, 'Rice Cooker', 60.00);


-- 1 

select p.ProductID, p.ProductName, sales_data.total_sales 
	   from (select ProductID, 
			 SUM(SalesAmount) as total_sales 
			 from Sales 
			 group by ProductID) as sales_data
inner join Products p on sales_data.ProductID = p.ProductID

-- 2 Create a CTE to find the average salary of employees.

;with cte as(
	select AVG(Salary) as avg_salary from Employees
)
select avg_salary from cte

-- 3 Write a query using a derived table to find the highest sales for each product.

select p.ProductID, p.ProductName, high_sales.max_sales from (select ProductID, MAX(SalesAmount) as max_sales from Sales group by ProductID) as high_sales
inner join Products p on high_sales.ProductID = p.ProductID

-- 4 Use a CTE to get the names of employees who have made more than 5 sales.

--incorrect

-- 5 Create a derived table that lists the top 5 customers by total purchase amount.

-- incorrect

-- 6 Write a query using a CTE to find all products with sales greater than $500.

;with cte as (
			select ProductID, SUM(SalesAmount) total_sales from Sales
			group by ProductID
) 
select p.ProductID, p.ProductName ,cte.total_sales from cte
inner join Products p on p.ProductID = cte.ProductID
where cte.total_sales > 500

-- 7 Use a derived table to get the total number of orders for each customer.

-- incorrect

-- 8 Create a CTE to find employees with salaries above the average salary.

;with cte as (
			select AVG(Salary) as avg_salary from Employees 
)
select e.EmployeeID, e.FirstName, e.LastName, e.Salary from cte
join Employees e on e.Salary > cte.avg_salary
order by e.Salary desc

-- 9 Write a query to find the total number of products sold using a derived table.

select SUM(sales_data.TotalQuantity) as TotalProductsSold
from (
    select ProductID, COUNT(*) as TotalQuantity
    from Sales
    group by ProductID
) as sales_data;

-- 10 Use a CTE to find the names of employees who have not made any sales.

-- incorrect

-- 11 Write a query using a derived table to calculate the total revenue for each region.

-- incorrect

-- 12 Use a CTE to get the employees who worked for more than 5 years.

-- incorrect

-- 13 Create a query using a derived table to find customers who made more than 3 orders.

-- incorrect

-- 14 Write a query using a CTE to find employees with the highest sales in a specific department.

;with cte as (
		select DepartmentID, MAX(Salary) as max_salary from Employees group by DepartmentID
)
select e.EmployeeID, e.FirstName, e.LastName, d.DepartmentID, d.DepartmentName, cte.max_salary from cte
join Departments d on d.DepartmentID = cte.DepartmentID
join Employees e on e.DepartmentID = cte.DepartmentID and e.Salary = cte.max_salary

-- 15 Use a derived table to calculate the average order value for each product.

select * from(
	select ProductID, AVG(SalesAmount) as avg_sales from Sales group by ProductID
) a
join Products p on p.ProductID = a.ProductID


-- 16 Write a query using a CTE to find the number of employees in each department.

;with cte as (
	select DepartmentID, COUNT(*) as count_employees from Employees group by DepartmentID
)
select * from cte
join Departments d on d.DepartmentID = cte.DepartmentID

-- 17 Use a derived table to find the top-selling products in the last quarter.

select p.ProductID, p.ProductName, a.TotalSales
from (
    select ProductID, SUM(SalesAmount) as TotalSales
    from Sales
    where SaleDate >= DATEADD(QUARTER, -1, GETDATE())  -- Last quarter
    group by ProductID) a
inner join Products p on a.ProductID = p.ProductID
order by a.TotalSales desc;

-- 18 Write a query using a CTE to list employees who have sales higher than $1000.

-- no such column

-- 19 Create a derived table to find the number of orders made by each customer.

-- no such column

-- 20 Write a query using a CTE to find the total sales per employee for the last month.

-- no such column

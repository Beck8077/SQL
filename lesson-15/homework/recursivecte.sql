--Tasks

--Task 1: Use a Derived Table to Find Employees with Managers
--Write a query using a derived table to find employees along with their managers.

select * from Employees


select E1.EmployeeID, E1.EmployeeName, E2.EmployeeName from Employees as E1
left join (
select EmployeeID, EmployeeName from Employees) as E2
on E1.ManagerID = E2.EmployeeID


--Task 2: Use a CTE to Find Employees with Managers
--Write a query using a CTE to find employees along with their managers.

;with cte as (
select EmployeeID, EmployeeName, ManagerID from Employees 
)
select cte.EmployeeName, e.EmployeeName as ManagerName from cte
left join Employees e on cte.ManagerID = e.EmployeeID

--Task 3: Compare Results of Derived Table and CTE
--Compare and analyze the output of the above two queries.



--Task 4: Find Direct Reports for a Given Manager Using CTE
--Write a CTE to find all direct reports of a given manager.

;with cte as (
select EmployeeID, EmployeeName, ManagerID from Employees where ManagerID = 5
)
select * from cte

--Task 5: Create a Recursive CTE to Find All Levels of Employees
--Write a recursive CTE to display all levels of employees in the hierarchy.

;with cte as (
select EmployeeID, EmployeeName, ManagerID from Employees
	where ManagerID is null
	union all
select e2.EmployeeID, e2.EmployeeName, e2.ManagerID from Employees e2
join cte on  e2.ManagerID = cte.EmployeeID
)
select SPACE(ManagerID * 4) + cte.EmployeeName as Hierarchy, * from cte

--Task 6: Count Number of Employees at Each Level Using Recursive CTE
--Write a recursive CTE to count the number of employees at each level.

;with cte as (
    select EmployeeID, EmployeeName, ManagerID, 0 as level
    from Employees
    where ManagerID IS NULL

    union all

    -- Рекурсивное объединение: находим подчиненных и увеличиваем уровень
    select e.EmployeeID, e.EmployeeName, e.ManagerID, cte.level +1
    from Employees e
    join cte on e.ManagerID = cte.EmployeeID
)
-- Считаем количество сотрудников на каждом уровне
select cte.level, COUNT(*) as EmployeeCount
from cte
group by level
order by level

--Task 7: Retrieve Employees Without Managers Using Derived Table
--Write a query using a derived table to find employees who do not have a manager.

select e.EmployeeID, e.EmployeeName from (
	select EmployeeID, EmployeeName, ManagerID from Employees) e
where e.ManagerID IS NULL;

--Task 8: Retrieve Employees Without Managers Using CTE
--Write a query using a CTE to find employees who do not have a manager.

;with cte as (
	select * from Employees
	where ManagerID is null
)
select * from cte

--Task 9: Find Employees Reporting to a Specific Manager Using Recursive CTE
--Write a recursive CTE to find all employees reporting to a specific manager.

;with cte as (
    select EmployeeID, EmployeeName, ManagerID
    from Employees
    where ManagerID = 2

    union all

    select e.EmployeeID, e.EmployeeName, e.ManagerID
    from Employees e
    join cte on e.ManagerID = cte.EmployeeID
)
select * from cte
order by  ManagerID, EmployeeID;

--Task 10: Find the Maximum Depth of Management Hierarchy
--Write a recursive CTE to determine the maximum depth of the management hierarchy.

;with cte as (
    select EmployeeID, EmployeeName, ManagerID, 1 as depth
    from Employees
    where ManagerID IS NULL

    union all

    select e.EmployeeID, e.EmployeeName, e.ManagerID, cte.depth +1
    from Employees e
    join cte on e.ManagerID = cte.EmployeeID
)
select max(depth) from cte

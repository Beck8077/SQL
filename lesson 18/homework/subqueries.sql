--1
DROP TABLE if EXISTS employees CREATE TABLE employees (id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2));

INSERT INTO employees (id, name, salary)
VALUES (1, 'Alice', 50000), (2, 'Bob', 60000), (3, 'Charlie', 50000);

select * from employees
where salary = (select min(salary) from employees)

--2

DROP TABLE if EXISTS products CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2) );

INSERT INTO products (id, product_name, price) 
VALUES (1, 'Laptop', 1200), (2, 'Tablet', 400), (3, 'Smartphone', 800), (4, 'Monitor', 300);

select * from products
where price > (select avg(price) from products)

--3

DROP TABLE if EXISTS departments CREATE TABLE departments ( id INT PRIMARY KEY, department_name VARCHAR(100) );
DROP TABLE if EXISTS employees CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), department_id INT, FOREIGN KEY (department_id) REFERENCES departments(id) );

INSERT INTO departments (id, department_name) 
VALUES (1, 'Sales'), (2, 'HR');

INSERT INTO employees (id, name, department_id) 
VALUES (1, 'David', 1), (2, 'Eve', 2), (3, 'Frank', 1);

select e.name, e.department_id, d.department_name from employees e
inner join departments d on e.department_id = d.id
where e.department_id = (select id from departments where department_name = 'Sales')

--4

DROP TABLE if EXISTS customers CREATE TABLE customers ( customer_id INT PRIMARY KEY, name VARCHAR(100) );
DROP TABLE if EXISTS orders CREATE TABLE orders ( order_id INT PRIMARY KEY, customer_id INT, FOREIGN KEY (customer_id) REFERENCES customers(customer_id) );

INSERT INTO customers (customer_id, name) 
VALUES (1, 'Grace'), (2, 'Heidi'), (3, 'Ivan');

INSERT INTO orders (order_id, customer_id)
VALUES (1, 1), (2, 1);

select * from customers c
where c.customer_id not in (select customer_id from orders)

--5

DROP TABLE if EXISTS products 
CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

INSERT INTO products (id, product_name, price, category_id) 
VALUES (1, 'Tablet', 400, 1), (2, 'Laptop', 1500, 1), (3, 'Headphones', 200, 2), (4, 'Speakers', 300, 2);

select * from products p 
where p.price = (select max(price) from products where p.category_id = products.category_id)

--6

DROP TABLE if EXISTS departments1
CREATE TABLE departments1 ( id INT PRIMARY KEY, department_name VARCHAR(100) );

DROP TABLE if EXISTS employees
CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT, FOREIGN KEY (department_id) REFERENCES departments(id) );

INSERT INTO departments1 (id, department_name) 
VALUES (1, 'IT'), (2, 'Sales');

INSERT INTO employees (id, name, salary, department_id)
VALUES (1, 'Jack', 80000, 1), (2, 'Karen', 70000, 1), (3, 'Leo', 60000, 2);

select e.id, e.name, e.salary, d.department_name from employees e
inner join departments1 d on e.department_id = d.id
where e.department_id = (select top 1 department_id from employees group by department_id order by avg(salary) desc )

--7

DROP TABLE if EXISTS employees CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

INSERT INTO employees (id, name, salary, department_id) 
VALUES (1, 'Mike', 50000, 1), (2, 'Nina', 75000, 1), (3, 'Olivia', 40000, 2), (4, 'Paul', 55000, 2);

select * from employees e
where e.salary > (select avg(salary) from employees where e.department_id = employees.department_id)

--8

DROP TABLE if EXISTS students CREATE TABLE students ( student_id INT PRIMARY KEY, name VARCHAR(100) );
DROP TABLE if EXISTS grades CREATE TABLE grades ( student_id INT, course_id INT, grade DECIMAL(4, 2), FOREIGN KEY (student_id) REFERENCES students(student_id) );

INSERT INTO students (student_id, name) 
VALUES (1, 'Sarah'), (2, 'Tom'), (3, 'Uma');

INSERT INTO grades (student_id, course_id, grade) 
VALUES (1, 101, 95), (2, 101, 85), (3, 102, 90), (1, 102, 80);

select s.student_id, s.name, g.course_id, g.grade from grades g
inner join students s on s.student_id = g.student_id
where g.grade = (select max(grade) from grades where grades.course_id = g.course_id)

--9

DROP TABLE if EXISTS products CREATE TABLE products ( id INT PRIMARY KEY, product_name VARCHAR(100), price DECIMAL(10, 2), category_id INT );

INSERT INTO products (id, product_name, price, category_id) 
VALUES (1, 'Phone', 800, 1), (2, 'Laptop', 1500, 1), (3, 'Tablet', 600, 1), (4, 'Smartwatch', 300, 1), (5, 'Headphones', 200, 2), (6, 'Speakers', 300, 2), (7, 'Earbuds', 100, 2);

select * from products p
where 3 = (select count(distinct p2.price) from products p2 where p2.category_id = p.category_id and p2.price >= p.price)

--10

DROP TABLE if EXISTS employees CREATE TABLE employees ( id INT PRIMARY KEY, name VARCHAR(100), salary DECIMAL(10, 2), department_id INT );

INSERT INTO employees (id, name, salary, department_id) 
VALUES (1, 'Alex', 70000, 1), (2, 'Blake', 90000, 1), (3, 'Casey', 50000, 2), (4, 'Dana', 60000, 2), (5, 'Evan', 75000, 1);

select * from employees e
where e.salary between (select AVG(e1.salary) from employees e1) and (select max(e2.salary) from employees e2 where e2.department_id = e.department_id)

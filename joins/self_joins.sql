use practice;

create table employeesTable(
emp_id int Primary Key, emp_name varchar(30), manager_id int);

describe employeesTable;
select * from employeesTable;

insert into employeesTable values
(1, 'Alice', NULL),
(2, 'Bob', 1),
(3, 'Charlie', 1),
(4, 'David', 2),
(5, 'Eve', 2),
(6, 'Frank', 3);

# Show each employee and their manager name
select e.emp_name as employee, m.emp_name as manager from employeesTable as e left join employeesTable as m on e.manager_id = m.emp_id;

# List employees who report to Alice
select e.emp_name as employee, m.emp_name as manager from employeesTable as e left join employeesTable as m on e.manager_id = m.emp_id where m.emp_name = 'Alice';

# List employees who have no manager
select e.emp_name as employee, m.emp_name as manager from employeesTable as e left join employeesTable as m on e.manager_id = m.emp_id where e.manager_id is null;

# Count how many employees each manager has
select m.emp_name, count(distinct e.emp_id) as manager from employeesTable as m left join employeesTable as e on e.manager_id = m.emp_id group by m.emp_id ;

# Show managers who manage more than 1 employee
select m.emp_name as manager, count(distinct e.emp_id) as manages_employees from employeesTable as m left join employeesTable as e on e.manager_id = m.emp_id group by m.emp_id having manages_employees > 0






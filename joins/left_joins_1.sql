# Left Joins

USE practice ;

CREATE TABLE companies ( company_id INT, company_name VARCHAR(20), location VARCHAR(20)) ;
INSERT INTO companies VALUES (1, "TechNova", "Bangalore");
INSERT INTO companies VALUES (2, "DataWorks", "Pune");
INSERT INTO companies VALUES (3, "CodeCrafters", "Delhi");
INSERT INTO companies VALUES (4, "SkyNet", "Chennai");
SELECT * FROM companies ;

CREATE TABLE departments (dept_id INT, dept_name VARCHAR(20), company_id INT);
INSERT INTO departments VALUES (10, "HR", 1);
INSERT INTO departments VALUES (11, "Engineering", 1);
INSERT INTO departments VALUES (12, "Sales", 2);
INSERT INTO departments VALUES (13, "Marketing", 3);
INSERT INTO departments VALUES (14, "R&D", 3);
INSERT INTO departments VALUES (15, "Legal", NULL); 
SELECT * FROM departments ;

CREATE TABLE employees (emp_id INT, emp_name VARCHAR(30), dept_id INT);
INSERT INTO employees VALUES (100, "Alice", 10);
INSERT INTO employees VALUES (101, "Bob", 11);
INSERT INTO employees VALUES (102, "Charlie", 11); 
INSERT INTO employees VALUES (103, "David", 12);
INSERT INTO employees VALUES (104, "Eve", 14);
INSERT INTO employees VALUES (105, "Frank", NULL);
SELECT * FROM employees ;

# List all departments along with the company names (including departments with no company)
SELECT d.dept_name, c.company_name FROM departments AS d LEFT JOIN companies AS c on c.company_id = d.company_id ;

# Show all employees and their department names (including employees without a department)
select e.emp_name, d.dept_name from employees as e left join departments as d on e.dept_id = d.dept_id ;

# Show all departments and the employees working in them (including empty departments)
select d.dept_name, e.emp_name from departments as d left join employees as e on d.dept_id = e.dept_id ;

# List all companies and how many departments they have (including companies with 0 departments)
select c.company_name, count(d.dept_id) as departments_count from companies as c left join departments as d on c.company_id = d.company_id group by c.company_name ;

# List all companies and how many employees they have
select c.company_name, count(e.emp_id) as emp_count from companies as c left join departments as d on c.company_id = d.company_id left join employees as e on e.dept_id = d.dept_id group by c.company_name ;

# Find departments where no employees are working
select d.dept_name, count(distinct e.emp_id) as emp_count from departments as d left join employees as e on d.dept_id = e.dept_id group by d.dept_name having count(distinct e.emp_id) = 0  ; 
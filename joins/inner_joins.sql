# inner joins

use practice;

create table students (student_id int, name varchar(30), department varchar(30));
insert into students values
(1, 'Alice', 'Computer Science'),
(2, 'Bob', 'Information Technology'),
(3, 'Charlie', 'Electronics'),
(4, 'David', 'Computer Science'),
(5, 'Eve', 'Mechanical'),
(6, 'Frank', 'Information Technology');

create table courses (course_id int, course_name varchar(30), tutor varchar(30));
insert into courses values
(101, 'Database Systems', 'Dr. Rao'),
(102, 'Networks', 'Dr. Kumar'),
(103, 'Machine Learning', 'Dr. Sen'),
(104, 'Data Structures', 'Dr. Nair'),
(105, 'Robotics', 'Dr. Mehta');

create table enrollments (student_id int, course_id int, grade char(1));
insert into enrollments values
(1, 101, 'A'),
(1, 103, 'B'),
(2, 101, 'B'),
(2, 104, 'A'),
(3, 102, 'B'),
(4, 101, 'C'),
(4, 104, 'B'),
(6, 103, 'A');

select * from students;
select * from courses;
select * from enrollments;


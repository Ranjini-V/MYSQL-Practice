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

# all students with their enrolled course names
select s.name, c.course_name from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id ;

# show each student’s name along with their grade in every course
select s.name, e.grade, c.course_name from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id ;

# find all courses and the names of students taking them
select s.name, c.course_name from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id ;

# find the instructor name along with student names
select c.tutor, s.name from courses as c inner join enrollments as e on c.course_id = e.course_id inner join students as s on e.student_id = s.student_id ;

# show the department of each student who is taking 'Database Systems'
select s.name from courses as c inner join enrollments as e on c.course_id = e.course_id inner join students as s on e.student_id = s.student_id where c.course_name = "Database Systems" ;
   
# students who scored grade 'A' in any course
select s.name, c.course_name, e.grade from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on e.course_id = c.course_id where e.grade = 'A' ;

# names of students enrolled in courses taught by 'Dr. Sen'
select s.name, c.course_name, c.tutor from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on e.course_id = c.course_id where c.tutor = 'Dr. Sen' ;

# all Computer Science students enrolled in 'Data Structures'
select s.name, s.department, c.course_name from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id where c.course_name = 'Data Structures' ;

# course names taken by students whose name starts with ‘A’
select s.name, c.course_name, e.grade from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id where s.name like "A%" ;

# courses that have at least one 'Information Technology' student enrolled
select c.course_name, s.name, s.department from students as s inner join enrollments as e on s.student_id = e.student_id inner join courses as c on c.course_id = e.course_id where s.department = 'Information Technology' ;


# count how many students are enrolled in each course
select c.course_name, count(s.name) as student_number from courses as c inner join enrollments as e on c.course_id = e.course_id inner join students as s on s.student_id = e.student_id group by c.course_name ;

# display each course and the number of students enrolled in it (COUNT(*))
select c.course_name, count(s.name) as student_count from courses as c inner join enrollments as e on c.course_id = e.course_id inner join students as s on e.student_id = s.student_id group by c.course_name ;

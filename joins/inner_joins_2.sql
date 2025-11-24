# inner joins_2

use practice;

# List all students who are not enrolled in any course
select s.name from students as s left join enrollments as e on s.student_id = e.student_id where e.course_id is null ;

# Show all courses that currently have no students enrolled
select c.course_name from courses as c left join enrollments as e on c.course_id = e.course_id where e.student_id is NULL ;

# Display each department and the number of distinct courses its students are enrolled  in
select s.department, count(distinct c.course_name) as total_course from students as s join enrollments as e on s.student_id = e.student_id join courses as c on c.course_id = e.course_id group by s.department ;

# List tutors who teach more than one courses
select c.tutor, count(distinct c.course_id) as course_number from courses as c join enrollments as e on c.course_id = e.course_id group by c.tutor having count(c.course_id) > 1 ;


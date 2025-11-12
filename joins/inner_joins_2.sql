# inner joins_2

use practice;

# List all students who are not enrolled in any course
select s.name from students as s left join enrollments as e on s.student_id = e.student_id where e.course_id = null ;

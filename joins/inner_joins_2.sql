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

# Show all employees who work in a company located in Bangalore
select e.emp_id, e.emp_name, c.location from employees as e left join departments as d on e.dept_id = d.dept_id left join companies as c on c.company_id = d.company_id where c.location = "Bangalore" ;

#Show company-wise count of employees working in "Engineering", including if 0
select c.company_name, count(e.emp_id) as emp_count from companies as c left join departments as d on c.company_id = d.company_id left join employees as e on d.dept_id = e.dept_id group by c.company_name ;


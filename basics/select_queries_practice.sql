use practice;
select * from employeeinfo;

insert into employeeinfo values('Alice Brown', 6, 'Chicago', 36);
insert into employeeinfo values('David Lee', 7, 'San Francisco', 25);
insert into employeeinfo values('Maria Lopez', 8, 'Miami', 29);
insert into employeeinfo values('James Wilson', 9, 'Seattle', 26);

# retrieve unique field values from table
select distinct name from employeeinfo;
select distinct name from employeeinfo where location='New York';

# 'and' operator
select name from employeeinfo where location = 'Miami' and age > 25;

# 'or' operator
select name from employeeinfo where (location = 'Miami' and age < 29) or location = 'San Francisco';
select name from employeeinfo where id = 1 or id = 4;

# 'in' operator
select name from employeeinfo where age in (23, 24, 20);
select name from employeeinfo where location in ("Chicago", "New York");

# 'between' operator
select name from employeeInfo where age between 1 and 100;
select name from employeeinfo where age not between 20 and 30;
# sub-queries

use practice;
create table citizens(name varchar(20), age int(3), exp int(3));
create table citizenLoc(name varchar(20), location varchar(20));

describe citizens;
describe citizenLoc;

insert into citizens values 
('John Doe', 35, 10),
('Jane Smith', 28, 5),
('Michael Brown', 40, 15),
('Emily Davis', 22, 2),
('Chris Wilson', 50, 25),
('Anna Lee', 30, 8),
('David Kim', 45, 18),
('Sarah Clark', 27, 4),
('James Taylor', 38, 12),
('Olivia Harris', 33, 7); 

insert into citizenLoc values	
('John Doe', 'New York'),
('Jane Smith', 'Los Angeles'),
('Michael Brown', 'Chicago'),
('Emily Davis', 'Miami'),
('Chris Wilson', 'Houston'),
('Anna Lee', 'San Francisco'),
('David Kim', 'Seattle'),
('Sarah Clark', 'Boston'),
('James Taylor', 'Austin'),
('Olivia Harris', 'Denver');
 
select * from citizens;
select * from citizenLoc;

# name and age of citizen from Miami
select name, age from citizens where name in (select name from citizenLoc where location = 'Miami');

# fetch expirience of people living in Chicago
select name, exp from citizens where name in (select name from citizenLoc where location = 'Chicago');

#Get all citizens who live in the same city as "John Doe"
select name from citizens where name in (select name from citizenLoc where location in (select location from citizenloc where name = 'John Doe'));

# Find citizens older than the average age
select name, age from citizens where age > (select avg(age) from citizens);

# Get citizens whose experience is greater than the average experience
select name, exp from citizens where exp > (select avg(exp) from citizens);

# Get locations where citizens are older than 40
select location from citizenLoc where location in (select location from citizenLoc where name in (select name from citizens where age > 40));

# Find names of citizens who are not living in Miami or Chicago
select name from citizens where name not in (select name from citizenLoc where location = 'Miami' or location = 'Chicago');

# Find the youngest citizen(s) and their location
select name, location from citizenLoc where name in (select name from citizens where age in  (select min(age) from citizens));

# Get the top 3 oldest citizens (using subquery and LIMIT)
# select name, age from citizens where age in (select age from citizens order by age desc limit 3);
# Error Code: 1235. This version of MySQL doesn't yet support 'LIMIT & IN/ALL/ANY/SOME subquery'	0.000 sec

# Get citizens who have more experience than “Anna Lee”
select name, exp from citizens where exp > (select exp from citizens where name = 'Anna Lee');

# List all cities where experience > 10 years
select location from citizenLoc where name in (select name from citizens where exp in (select exp from citizens where exp > 10));

# creating database
create database Practice;
# point to databse
use Practice;

# create tables
create table EmployeeInfo(name varchar(20), id int(10), location varchar(20), age int);
describe EmployeeInfo;
insert into EmployeeInfo values('John Smith', 1, 'New York', 29);
insert into EmployeeInfo values('Alice Brown', 2, 'Chicago', 34);
insert into EmployeeInfo values('David Lee', 3, 'San Francisco', 21);
insert into EmployeeInfo values('Maria Lopez', 4, 'Miami', 27);
insert into EmployeeInfo values('James Wilson', 5, 'Seattle', 25);

select name, id, location, age from EmployeeInfo;
select name, location from EmployeeInfo;
select * from EmployeeInfo;

# add, modify column to table
alter table EmployeeInfo add gender varchar(10);
alter table EmployeeInfo modify gender varchar(30);

# delete table
alter table EmployeeInfo drop gender;

# delete a row in the table
delete from EmployeeInfo where name = 'Maria lopez';

# add data to new column
select * from EmployeeInfo;
update EmployeeInfo set gender='male' where name='John Smith';
update EmployeeInfo set gender = 'female' where name ='Alice Brown';
update EmployeeInfo set gender = 'male' where name = 'David Lee';
update EmployeeInfo set gender = 'female' where name = 'Maria Lopez';
update EmployeeInfo set gender = 'male' where name = 'James Wilson';
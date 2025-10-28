# joins

use practice;

create table company(name varchar(30), branch varchar(30), employees int(10));
create table established(name varchar(30), year int(5));

insert into company values
('TechNova Solutions', 'New York', 120),
('CloudSphere Pvt Ltd', 'San Francisco', 85),
('DataWorks Inc.', 'Chicago', 60),
('VisionSoft Systems', 'Dallas', 150),
('CodeCrafters Ltd', 'Miami', 40),
('PixelEdge Technologies', 'Seattle', 95),
('SmartLogic Corp', 'Boston', 70),
('BlueSky Innovations', 'Denver', 50),
('NexGen Enterprises', 'Austin', 110),
('AlphaCore Analytics', 'Atlanta', 65);


insert into established values
('TechNova Solutions', 2010),
('CloudSphere Pvt Ltd', 2015),
('DataWorks Inc.', 2008),
('VisionSoft Systems', 2012),
('CodeCrafters Ltd', 2018),
('PixelEdge Technologies', 2011),
('SmartLogic Corp', 2009),
('BlueSky Innovations', 2016),
('NexGen Enterprises', 2014),
('AlphaCore Analytics', 2013);

select * from company;
select * from established;

# count of emp of a company established in 2013
select c.name, c.employees, est.year from company as c join established as est on c.name = est.name where est.year = 2013;

# display all company names and branches that were established before 2012
select c.name, c.branch, est.year from company as c join established as est on c.name = est.name where est.year < 2012;

# list companies from ‘New York’ and show their year of establishment
select company.name, established.year from company join established on company.name = established.name where company.branch = 'New York';

# show company name, branch, and employee count for companies established after 2010.
select c.name, c.branch, c.employees, est.year from company as c join established as est on c.name = est.name where est.year > 2010 ;

# find companies where the year of establishment is before 2015 and employees are more than 80
select c.name, c.employees, est.year from company as c join established as est on c.name = est.name where est.year >= 2015 and c.employees > 80 ;

# find all companies established after 2010 and having fewer than 100 employees
select c.name, c.employees, est.year from company as c join established as est on c.name = est.name where est.year > 2010 and c.employees < 100 ;

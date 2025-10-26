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
select c.employees, est.year from company as c join established as est on 
 




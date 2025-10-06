# group by
use practice;
create table transactions(month varchar(20), day int(10), amount float(50), branch varchar(10));

insert into transactions values
('January', 5, 2500.75, 'New York'),
('February', 10, 3200.00, 'Chicago'),
('March', 15, 4100.50, 'Seattle'),
('April', 8, 3800.25, 'Dallas'),
('May', 12, 2950.00, 'Miami'),
('June', 18, 4500.90, 'Los Angeles'),
('July', 20, 3750.60, 'Boston'),
('August', 9, 4200.30, 'San Francisco'),
('September', 14, 3900.00, 'Atlanta'),
('October', 22, 4600.80, 'Denver'),
('November', 25, 3400.40, 'Houston'),
('December', 30, 5100.00, 'New York');

alter table transactions modify month varchar(50), modify day int(20), modify branch varchar(30);
describe transactions;
select * from transactions;

select sum(amount), month from transactions group by month;
select max(amount), month from transactions group by month;
select min(amount), month from transactions group by month;

select sum(amount), branch from transactions group by branch;
select max(amount), branch from transactions group by branch;
select min(amount), branch from transactions group by branch;

 select * from transactions where branch='New York';
 select count(*), branch from transactions group by branch;
 
# condition on table - where
# condition on group by results - having
select count(*), month from transactions group by month having count(*)<6;

select sum(amount), month from transactions group by month;

# Get the month where amount < 11500 with Atlanta and Dallas combined
select sum(amount), month from transactions where branch = 'Atlanta' or branch = 'Dallas' group by month having sum(amount) < 11500;

# get the branch with sum of amount more than 10000 in December
select sum(amount), branch from transactions where month = 'December' group by branch having sum(Amount) > 5000;
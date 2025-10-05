# regular expressions
use world;
select * from city;

select name from city where countrycode like 'A%';
select countrycode from city where countrycode like 'A%';

select name from city where name like '__M';
select name from city where name like '__M%';

# order by 
select * from city order by district;
select name , population from city order by population desc;
# Right Joins

use practice ;

create table customers ( customer_id int primary key, customer_name varchar(20));
create table products ( product_id int primary key, product_name varchar(20));
create table orders (order_id int primary key, customer_id int, product_id int);
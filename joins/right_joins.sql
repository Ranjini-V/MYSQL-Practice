# Right Joins

use practice ;

create table customers ( customer_id int primary key, customer_name varchar(20));
create table products ( product_id int primary key, product_name varchar(20));
create table orders (order_id int primary key, customer_id int, product_id int);

insert into customers values (1, 'Alice'), (2, 'Bob'), (3, 'Charlie'), (4, 'David');
insert into products values (101, 'Laptop'), (102, 'Phone'), (103, 'Tablet'), (104, 'Headphones');
insert into orders values (1001, 1, 101), (1002, 1, 102), (1003, 2, 103), (1004, 3, 101);

select * from customers ;
select * from products ;
select * from orders ;

# List all products and show which customer ordered them
select c.customer_name, p.product_name from products as p right join orders as o on p.product_id = o.product_id left join customers as c on o.customer_id = c.customer_id;

# Show customer names even if they did not order anything
# order_id is null
select customer_name, order_id from orders as o right join customers as c on c.customer_id = o.customer_id ;

# List products that have not been ordered by any customer 
# order_id = null for a product
select product_name, order_id from orders as o right join products as p on p.product_id = o.product_id where o.order_id is null ;

# Show all orders with product details
select o.order_id, p.product_name from products as p right join orders as o on o.product_id = p.product_id ;

#Show the products bought by “Alice” only using RIGHT JOIN
select c.customer_name, p.product_name, order_id from products as p right join orders as o on p.product_id = o.product_id right join customers as c on o.customer_id = c.customer_id where c.customer_name = "Alice" ;

# List customers who have ordered “Laptop"
select c.customer_name, c.customer_id, p.product_id, p.product_name, o.order_id from orders as o right join customers as c on o.customer_id = c.customer_id right join products as p on p.product_id = o.product_id where p.product_name = "Laptop" ;

# Show product name & count how many times each was ordered
select p.product_name, count(o.product_id) as sold from products as p right join orders as o on p.product_id = o.product_id group by p.product_name ;

# Display customers whose orders do not match any product
# (customers with order_id = null)
select c.customer_name from orders as o right join customers as c on c.customer_id = o.customer_id where o.order_id is null ;

# List customers who ordered only one product
select c.customer_name from orders as o right join customers as c on c.customer_id = o.customer_id group by c.customer_name having count(o.order_id) = 1 ;

# Show customers who ordered more than one distinct product
select c.customer_name, count(distinct o.product_id) as orders from customers as c right join orders as o on c.customer_id = o.customer_id group by c.customer_name  having count(distinct o.product_id) > 1; 

# List products that were ordered only once across all customers
select p.product_name, count(distinct o.order_id) as orderedTimes from products as p right join orders as o on p.product_id = o.product_id group by p.product_name having count(distinct o.order_id)= 1 ;

# Show customers who never ordered the product "Keyboard"
select distinct c.customer_name from customers as c right join orders as o on c.customer_id = o.customer_id right join products as p on p.product_id = o.product_id group by c.customer_id having sum(case when p.product_name = "Keyboard" then 1 else 0 end) = 0 ;




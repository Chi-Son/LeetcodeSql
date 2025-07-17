--1
select region, count(customer_id) from sales group by region

--2 
select product, sum(quantity) from sales group by product

--3
select product, sum(quantity*price) from sales group by product

--4
select region, 
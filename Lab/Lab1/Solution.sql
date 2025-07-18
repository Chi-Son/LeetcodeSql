--1
select region, count(id) from sales group by region

--2 
select product, sum(quantity) from sales group by product

--3
select product, sum(quantity*price) from sales group by product

--4
select region, avg(quantity*price)from sales group by region

--5
select  count(distinct customer_id), product from sales group by product

--6 
select region from sales group by region order by sum(quantity*price) desc  limit 1

--7 
select  sale_date,product, sum(quantity*price) from sales group by product, sales_date

--8 
select customer_id from sales group by customer_id order by sum(quantity) desc  limit 1

--9
select region, product, revenue
from (
    select region, product, sum(quantity * price) as revenue,
           row_number() over (partition by region order by sum(quantity * price) desc) as rn
    from sales
    group by region, product
) t
where rn = 1;

--1
Select C.name, sum(O.total_amount) from Customers C inner join Orders O on C.id= O.customer_id group by C.name
--2
select C.name, sum(O.total_amount) from Customers C left join Orders O on C.id= O.customer_id group by C.name
--3
select C.name,P.name,OI.quantity 
from Customers C 
inner join Orders O on C.id=O.customer_id
left join OrderItems OI on O.id=OI.order_id
left join Products P on OI.product_id= P.id
--4
select C.name,sum(OI.quantity) as quantity 
from Customers C 
inner join Orders O on C.id=O.customer_id
left join OrderItems OI on O.id=OI.order_id
group by C.name
--5
select P.name,coalesce(sum(OI.quantity),0) as quantity 
from Products P 
left join OrderItems OI on P.id=OI.product_id
group by P.name 
--6
select e.name as employee , coalesce (m.name,'No manager') as manager
from employees e left join employees m 
on e.manager_id = m.id
--7
select C.name,P.name,sum(OI.quantity)
from Customers C 
left join Orders on C.id = Orders.customer_id
right join Orderitems OI on Orders.id =OI.order_id
left join Products P on OI.product_id =P.id
group by C.name,P.name
--8 order by

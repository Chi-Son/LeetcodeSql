--1
Select C.name,O.total_amount from Customers C inner join Orders O on C.id= O.customer_id
--2
select C.name, O.total_amount from Customers C left join Orders O on C.id= O.customer_id 
--3
select C.name,P.name,OI.quantity 
from Customers C 
inner join Orders O on C.id=O.customer_id
left join OrderItems OI on O.id=OI.order_id
left join Products P on OI.product_id= P.id
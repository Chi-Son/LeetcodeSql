/*1757. Recyclable and Low Fat Products*/
select product_id from Products where low_fats = 'Y' and recyclable = 'Y';

/*1581. Customer Who Visited but Did Not Make Any Transactions*/
select customer_id, count(*) as count_no_trans  
from Visits 
left join Transactions ON Visits.visit_id= Transactions.visit_id
where Transactions.visit_id Is Null 
group by customer_id

/*584.Find Customer Referee*/
Select name from Customer where referee_id !=2 or referee_id is null
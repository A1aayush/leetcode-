-- # Write your MySQL query statement below
-- select C.name as Customers from customers as C 
-- left join orders as O on C.id = O.customerId
-- where O.customerId is null ;

-- solution 2
select name as Customers from customers 
where id not in (select customerId from orders);
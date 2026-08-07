select d.name as Department, e.name as Employee, e.salary as Salary From (
Select id, name, salary, departmentId, dense_rank() over (partition by departmentId order by salary desc) as Rnk from Employee) e 
join Department d on e.departmentId = d.id
where e.rnk <= 3;  
# Write your MySQL query statement below
select D.name as Department, E.name as Employee, E.Salary as Salary from employee E left join department D on 
E.departmentId = D.id
where Salary = (
    SELECT MAX(salary)
    FROM Employee
    WHERE departmentId = D.id)
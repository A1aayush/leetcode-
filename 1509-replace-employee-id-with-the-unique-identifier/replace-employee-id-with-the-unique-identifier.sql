-- select U.unique_id, E.name from Empoloyees as E 
-- join EmployeeUNI as U on 
-- E.id = U.id;


-- SELECT U.unique_id, E.name
-- FROM Employees AS E
-- LEFT JOIN EmployeeUNI AS U
-- ON E.id = U.id

-- UNION

-- -- RIGHT JOIN part
-- SELECT U.unique_id, E.name
-- FROM Employees AS E
-- RIGHT JOIN EmployeeUNI AS U
-- ON E.id = U.id;

select e2.unique_id, e1.name
from employees e1
left join employeeUNI e2
on e1.id=e2.id;
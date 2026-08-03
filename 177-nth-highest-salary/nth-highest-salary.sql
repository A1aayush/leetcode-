CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (SELECT salary
    FROM (
      select salary, Dense_rank() over (order by salary desc) as rnk
       from Employee
       ) ranked 
      where rnk = N
      limit 1
  );
END
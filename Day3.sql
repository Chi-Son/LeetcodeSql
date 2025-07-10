/*181. Employees Earning More Than Their Managers*/
SELECT e.name as Employee From Employee e join Employee m on e.managerId =m.id where e.salary>m.salary
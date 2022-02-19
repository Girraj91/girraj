CREATE TABLE Employee1 
(
  empid int primary key identity,
  ename varchar(50),
  hdate date,
  depid int,
  job varchar(50),
  salary decimal(7,2),
  commission decimal(7,2),
  managerid int,
)
insert into Employee1 values('Ankit',GETDATE(),101,'Software dev.',30000,2,12)
--select * from Employee1 
Create table Department2
(
Depid int primary key identity,
D_Name varchar(50),
LOC varchar(50)
)
select * from Department2

--(1) Answer
SELECT MAX(salary), MIN(salary), AVG(salary), MAX(commission), MIN(commission), AVG(commission)
FROM Employee1
--(2) Answer
SELECT depid, SUM(salary), SUM(commission) FROM Employee1 GROUP BY depid;
--(3) Answer
SELECT depid, SUM(salary), SUM(commission)
FROM Employee1
GROUP BY depid
HAVING SUM(commission) > 0;

--(4) Answer
SELECT depid, COUNT(*) AS NumClerks
FROM Employee1
WHERE job = 'CLERK'
GROUP BY depid;

--(5) Answer
SELECT ename, salary, COALESCE(commission, 0)
FROM Employee1;

--(6) Answer
select ename,depid ,commission as No_Commission from Employee1 where commission=0

--(7) Answer
select ename as EmployeeName,ISNULL(salary*2,0) as Salary,ISNULL(commission*2,0) as Commission from Employee1

--(8) Answer
select ename as Employee_Name,depid as Dipartment_Id from Employee1 group by depid,ename having ename like '%An%'

--(9) Answer
SELECT * FROM Employee1;
SELECT * FROM Department2
;
--(10) Answer
SELECT hdate, ename FROM Employee1;

--(11) Answer

SELECT hdate, ename, depid
FROM Employee1
WHERE job = 'Software dev';

--(12) Answer

SELECT ename, salary
FROM Employee1
WHERE salary > 2000;

--(13) Answer
SELECT ename AS 'Name', hdate As 'Start Date'
FROM Employee1;

--(14) Answer
SELECT ename, hdate
FROM Employee1
ORDER BY hdate;

--(15) Answer

SELECT ename, salary
FROM Employee1
ORDER BY salary DESC;
--(16) Answer

SELECT depid, SUM(salary), SUM(commission)
FROM Employee1
GROUP BY depid;

--(17) Answer
SELECT ename
FROM Employee1
WHERE salary NOT IN (SELECT MIN(salary) FROM Employee1);

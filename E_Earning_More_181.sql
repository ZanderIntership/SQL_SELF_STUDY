# Write your MySQL query statement below

SELECT A.name AS Employee FROM Employee A, Employee B WHERE A.managerId = B.Id AND A.salary > B.salary;

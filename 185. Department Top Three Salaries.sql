SELECT Department, Employee, Salary
FROM (
    SELECT 
        D.name AS Department,
        E.name AS Employee,
        E.salary AS Salary,
        Dense_Rank() OVER (
            PARTITION BY D.id
            ORDER BY E.salary DESC  
        ) AS rn
    FROM Employee E
    LEFT JOIN Department D
        ON D.id = E.departmentId
) AS x
WHERE x.rn <= 3
ORDER BY Employee DESC;   

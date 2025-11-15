# Write your MySQL query statement below

SELECT CASE

    WHEN MOD(id,2) = 1 AND id = (SELECT max(id) FROM Seat)  then id
        
    WHEN MOD(id,2) = 0 THEN id - 1 
    WHEN MOD(id,2) = 1 THEN  id + 1 
    

    END AS id,student 
    FROM Seat ORDER By id ASC

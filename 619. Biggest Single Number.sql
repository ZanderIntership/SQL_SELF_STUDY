# Write your MySQL query statement below
SELECT(
SELECT num FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) < 2
    ORDER by num DESC limit 1
) AS num

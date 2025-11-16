# Write your MySQL query statement below

SELECT CASE
    WHEN referee_id IS NULL THEN name
    WHEN referee_id <> 2 THEN name
    END AS name
    FROM Customer HAVING name IS NOT NULL

# Write your MySQL query statement below
SELECT person.email FROM person
GROUP BY person.email
HAVING COUNT(*) > 1


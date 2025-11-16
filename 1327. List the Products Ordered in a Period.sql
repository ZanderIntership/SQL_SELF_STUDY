# Write your MySQL query statement below

SELECT P.product_name, SUM(O.unit) AS unit FROM Products P
    LEFT JOIN Orders O ON P.product_id = O.product_id 
        WHERE O.order_date > '2020-01-31' AND O.order_date < '2020-03-01'
            GROUP BY O.product_id
                 HAVING unit >= 100 

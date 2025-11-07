# Write your MySQL query statement below

SELECT User_id AS user_id,
    ROUND(AVG(
        CASE 
            WHEN activity_type = 'free_trial' THEN activity_duration
        End
    ),2) AS trial_avg_duration,
    ROUND(AVG(
        CASE
            WHEN activity_type = 'paid' THEN activity_duration
        End
    ),2) AS paid_avg_duration
    FROM UserActivity 
        GROUP BY User_id
            HAVING trial_avg_duration IS NOT NULL
                AND paid_avg_duration IS NOT NULL;

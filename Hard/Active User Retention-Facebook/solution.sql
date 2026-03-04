WITH july_users AS (
    SELECT DISTINCT user_id
    FROM user_actions
    WHERE event_date >= '2022-07-01'
      AND event_date < '2022-08-01'
),
june_users AS (
    SELECT DISTINCT user_id
    FROM user_actions
    WHERE event_date >= '2022-06-01'
      AND event_date < '2022-07-01'
)

SELECT 
    7 AS month,
    COUNT(*) AS monthly_active_users
FROM july_users j
JOIN june_users p
  ON j.user_id = p.user_id;
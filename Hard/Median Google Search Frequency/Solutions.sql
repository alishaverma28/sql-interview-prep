WITH search_distribution AS (
    SELECT 
        searches,
        num_users FROM search_frequency
),cumulative_users AS (
    SELECT 
        searches,
        SUM(num_users) OVER (ORDER BY searches) AS cum_sum,
        SUM(num_users) OVER () AS total_sum
    FROM search_distribution
),median_candidates AS (
    SELECT searches
    FROM cumulative_users
    WHERE cum_sum BETWEEN total_sum/2.0 
                      AND total_sum/2.0 + 1
)SELECT ROUND(AVG(searches), 1) AS median
FROM median_candidates;
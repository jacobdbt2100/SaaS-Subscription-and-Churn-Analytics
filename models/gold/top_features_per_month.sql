-- top_features_per_month
SELECT
	DATE_TRUNC('month', usage_date)::date AS month_start,
    feature_name,
    COUNT(DISTINCT subscription_id) AS subscriptions_using_feature,
    SUM(usage_count) AS total_usage_count
FROM {{ ref('fct_feature_usage') }}
GROUP BY 1, 2
ORDER BY 1, subscriptions_using_feature DESC

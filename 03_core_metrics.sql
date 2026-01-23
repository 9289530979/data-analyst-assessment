1. MRR = sum of monthly_price of active subscriptions

SELECT SUM(monthly_price) AS MRR
FROM subscriptions
WHERE status = 'active'

2. ARR (Annual Recurring Revenue) / ARR = MRR × 12

SELECT SUM(monthly_price) * 12 AS ARR
FROM subscriptions
WHERE status = 'active'

3. Churned customers ÷ total customers

SELECT
COUNT(DISTINCT CASE WHEN status = 'canceled' THEN customer_id END) * 100.0
/ COUNT(DISTINCT customer_id) AS customer_churn_rate
FROM subscriptions

4. Lost revenue ÷ total revenue = '21.77030'

SELECT
SUM(CASE WHEN status = 'canceled' THEN monthly_price ELSE 0 END) * 100.0
/ SUM(monthly_price) AS revenue_churn_rate
FROM subscriptions

5. ARPC (Average Revenue per Customer) = '274.1464'

SELECT
SUM(monthly_price) / COUNT(DISTINCT customer_id) AS ARPC
FROM subscriptions
WHERE status = 'active'

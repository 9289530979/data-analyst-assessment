1. MRR = sum of monthly_price of active subscriptions,  '187242'

SELECT SUM(monthly_price) AS MRR
FROM subscriptions
WHERE (status = 'active' OR end_date IS NULL);

2. ARR (Annual Recurring Revenue) / ARR = MRR × 12,  '2246904'

SELECT SUM(monthly_price) * 12 AS ARR
FROM subscriptions
WHERE (status = 'active' OR end_date IS NULL);

3. Customer (Logo) Churn Rate,   '22.30000'
Because the data does not include a clear time period, this churn metric shows the overall share of customers who have churned, not a monthly churn rate.
  
SELECT
COUNT(DISTINCT customer_id) * 100.0
/ (SELECT COUNT(DISTINCT customer_id) FROM customers)
AS customer_churn_rate
FROM subscriptions
WHERE status = 'canceled';

4. Revenue Churn Rate = '21.77030'
This is overall revenue churn share, not period churn
  
SELECT
  SUM(CASE WHEN status = 'canceled' THEN monthly_price ELSE 0 END) * 100.0
  / SUM(CASE WHEN status IN ('active', 'canceled') THEN monthly_price ELSE 0 END)
  AS revenue_churn_rate
FROM subscriptions;

5. ARPC (Average Revenue per Customer) = '274.1464'

SELECT
  SUM(monthly_price) / COUNT(DISTINCT customer_id) AS ARPC
FROM subscriptions
WHERE status = 'active' OR end_date IS NULL;

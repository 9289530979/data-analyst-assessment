SELECT COUNT(DISTINCT customer_id) AS signup_users
FROM customers
Not sure 


1.Trial/ 676 COUNT
SELECT COUNT(DISTINCT customer_id)
FROM events
WHERE event_type = 'trial_start'

2. Activated/ 404 COUNT 
SELECT COUNT(DISTINCT customer_id)
FROM events
WHERE event_type = 'activated'

3. Paid/ 906 COUNT
SELECT COUNT(DISTINCT customer_id)
FROM subscriptions

4. Churned/ 223 COUNT 
SELECT COUNT(DISTINCT customer_id)
FROM subscriptions
WHERE status = 'canceled'


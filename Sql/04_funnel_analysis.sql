1. Signup/ 1000
SELECT COUNT(DISTINCT customer_id) AS signup_users
FROM customers


2. Trial/ 676 COUNT
SELECT COUNT(DISTINCT customer_id)
FROM events
WHERE event_type = 'trial_start'

3. Activated/ 404 COUNT 
SELECT COUNT(DISTINCT customer_id)
FROM events
WHERE event_type = 'activated'

4. Paid/ 906 COUNT
SELECT COUNT(DISTINCT customer_id)
FROM subscriptions

5. Churned/ 223 COUNT 
SELECT COUNT(DISTINCT customer_id)
FROM subscriptions
WHERE status = 'canceled'

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

4. Paid/ 374 COUNT
  
SELECT COUNT(DISTINCT s.customer_id) AS paid_users
FROM subscriptions s
JOIN events e
  ON s.customer_id = e.customer_id
WHERE e.event_type = 'activated';

5. Churned/ 223 COUNT 
SELECT COUNT(DISTINCT customer_id)
FROM subscriptions
WHERE status = 'canceled'

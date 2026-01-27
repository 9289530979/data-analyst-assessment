1. Customers_Table/ signup date -- the column is a blank/empty / 36 rows - Some customers do not have a signup date. These records were kept, and missing dates were handled using reasonable assumptions during analysis.

SELECT *
FROM customers
WHERE signup_date IS NULL OR signup_date = '';

2. Customers_Table/ segment -- the column is a blank/empty / 243 rows - Many customers do not have a segment assigned. These were treated as “Unknown” during segmentation analysis.

SELECT *
FROM customers
WHERE segment IS NULL OR segment = '';

3. subscriptions_Table/ customer_id / duplicates / 35 rows - Some customers have multiple subscription records, which likely represents renewals or plan changes. One active subscription per customer was assumed for revenue calculations.

SELECT customer_id, COUNT(*)
FROM subscriptions
GROUP BY customer_id
HAVING COUNT(*) > 1;


4. subscriptions_Table/ end_date / Blank/empty / 718 rows - Subscriptions with a missing end date were assumed to be active subscriptions
  
SELECT *
FROM subscriptions
WHERE end_date IS NULL OR end_date = '';


5. events_table / duplicate / customer_id / 783 rows  - The events table contains multiple records per customer, 
which is expected for user activity data. These events were only deduplicated where required for funnel analysis by keeping the earliest relevant event per funnel stage.

SELECT customer_id,  COUNT(*)
FROM events
GROUP BY customer_id
HAVING COUNT(*) > 1;

6. Events exist but NO subscription for that customer/ 94 rows - Some users have events but no subscription record, indicating users who signed up or interacted with the product but never converted to paying customers.

SELECT DISTINCT e.customer_id
FROM events e
LEFT JOIN subscriptions s
ON e.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

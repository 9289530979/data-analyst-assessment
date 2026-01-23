1. Customers_Table/ signup date -- the column is a blank/empty / 36 rows

SELECT *
FROM customers
WHERE signup_date = '';

2. Customers_Table/ segment -- the column is a blank/empty / 243 rows

SELECT *
FROM customers
WHERE segment = '';

3. subscriptions_Table/ customer_id / duplicates / 35 rows

SELECT customer_id, COUNT(*)
FROM subscriptions
GROUP BY customer_id
HAVING COUNT(*) > 1;


4. subscriptions_Table/ end_date / Blank/empty / 718 rows

SELECT end_date
FROM subscriptions
WHERE end_date = ''


5. events_table / duplicate / customer_id / 783 rows 

SELECT customer_id,  COUNT(*)
FROM events
GROUP BY customer_id
HAVING COUNT(*) > 1;

6. Events exist but NO subscription for that customer/ 94 rows

SELECT DISTINCT e.customer_id
FROM events e
LEFT JOIN subscriptions s
ON e.customer_id = s.customer_id
WHERE s.customer_id IS NULL;

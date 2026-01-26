## Assumptions & Data Issues
The data contains duplicate events. I kept only the first occurrence of each event per customer.
	•	Some customers have missing segment values. These were labeled as “Unknown”.
	•	Subscriptions with NULL end_date are treated as active subscriptions.
	•	Funnel events are not always in perfect order. I used the first occurrence of each event.

## Metric Definitions
MRR (Monthly Recurring Revenue)
MRR is calculated by summing the monthly price of all active subscriptions in each month.

ARR (Annual Recurring Revenue)
ARR is calculated as MRR multiplied by 12.

Logo Churn
Logo churn is the percentage of customers who canceled their subscription in a given month.

Revenue Churn
Revenue churn represents the total recurring revenue lost due to canceled subscriptions in a month.

ARPC (Average Revenue per Customer)
ARPC is the average monthly revenue generated per active customer.

## Funnel Analysis Approach
The funnel stages used are Signup → Trial → Activated → Paid → Churned.
	•	Customers may skip steps, so the funnel is not always linear.
	•	For each stage, I used the first event date per customer.
	•	This approach avoids double counting and reflects real user behavior.

## Dashboard Explanation
MRR Trend
Shows how monthly recurring revenue changes over time and highlights growth or slowdown.

Funnel Conversion Chart
Shows where the biggest drop-offs occur between funnel stages.

Churn Overview
Highlights customer and revenue churn patterns over time.

Source / Segment Breakdown
Compares performance across acquisition sources or customer segments.





## Insights & Recommendations 

### 1. Key Growth Bottlenecks
Based on the analysis and dashboard, the biggest growth bottleneck occurs in the funnel between Trial and Paid users. While many users sign up and start a trial, a significantly smaller portion convert into paying customers. This suggests that users may not be seeing enough value during the trial period or are facing friction before upgrading.
Additionally, customer churn contributes to revenue instability, indicating that retaining customers after they become paid users is also an area that needs improvement.

### 2. Strongest and Weakest Acquisition Channels
Among the acquisition channels, Organic users perform the best. They show higher conversion rates to paid plans and lower churn, indicating better customer quality and long-term value.
On the other hand, Paid Ads generate a high number of signups but have lower conversion to paid customers and higher churn. This suggests that while Paid Ads bring volume, the users acquired through this channel are less engaged or less suitable for the product

### 3. What I Would Investigate Next
To better understand the drivers behind conversion and churn, I would focus on a few targeted follow-up analyses.
First, I would analyze customer churn by signup period to determine whether newer customers are leaving faster than earlier customers. This would help identify whether recent changes in acquisition channels, onboarding, or product experience are negatively impacting retention. Second, I would examine user activity during the trial period to understand which behaviors are most strongly associated with converting to a paid plan. Identifying these patterns would help improve onboarding and guide users toward actions that increase the likelihood of payment. Finally, I would investigate early churn within the first 30 days of a paid subscription. High early churn would suggest misaligned expectations or onboarding gaps, while lower early churn would indicate stronger product fit.
These analyses would help isolate the root causes of low conversion and churn and inform more targeted product and growth initiatives.

### 4. Actionable Recommendations
1. Improve the trial onboarding experience so users clearly understand the product value early, which can help increase the conversion from trial users to paid customers.
2. Focus marketing efforts more on high-performing channels such as Organic and Referral, and reduce or optimize spending on Paid Ads that bring lower-quality users.

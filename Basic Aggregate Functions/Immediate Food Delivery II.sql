select
round(avg(if(a = b, 1, 0)*100),2) as immediate_percentage
from (
select
delivery_id, 
customer_id,
min(order_date) as a,
min(customer_pref_delivery_date) as b
from Delivery
group by customer_id) as new

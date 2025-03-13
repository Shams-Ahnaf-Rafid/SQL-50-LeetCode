select p.product_name, sum(o.unit) as unit
from Products p
left join Orders o
on p.product_id = o.product_id
where left(order_date,7) = '2020-02'
group by product_name
having sum(o.unit) >= 100
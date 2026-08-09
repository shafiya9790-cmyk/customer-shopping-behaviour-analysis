select *from "customer behavior";
select gender, sum(purchase_amount)as total_revenue
from "customer behavior"
group by gender;

select customer_id,purchase_amount
from "customer behavior"
where discount_applied='Yes'AND purchase_amount >(select avg(purchase_amount)
from "customer behavior");

select item_purchased,avg(review_rating)as avg_rating from "customer behavior"
group by item_purchased order by avg_rating desc limit 5; 

select shipping_type,avg(purchase_amount)as average_purchase from "customer behavior"
where shipping_type in ('Standard','Express') group by shipping_type;

select subscription_status,avg(purchase_amount)
as average_spend, sum(purchase_amount) as total_revenue from "customer behavior"
group by subscription_status;


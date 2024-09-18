----find which plans each customers availed----
select c.customer_id, c.first_name, c.last_name, p.pension_plan
from payments p
join customers c on p.customer_id = c.customer_id;

----finding how many customers availed each plans----
select p.pension_plan, count (b.payment_id) as customers_availed
from pensions p
left join payments b on b.pension_plan = p.pension_plan
group by p.pension_plan
order by customers_availed desc;

----union for table of payements and pensions----
select payment_id
from payments

union 
select pension_price 
from pensions;

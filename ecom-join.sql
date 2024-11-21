select * from rental;
select * from customer;
select * from inventory;

select customer.first_name as fname, customer.last_name as lname
from rental as r
INNER join
customer on customer.customer_id = r.customer_id;

SELECT 
    inventory.store_id, inventory.inventory_id
FROM
    inventory
        INNER JOIN
    rental ON rental.inventory_id = inventory.inventory_id;



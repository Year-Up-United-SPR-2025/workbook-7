select 
*
from
customer
inner join rental on customer.customer_id = rental.customer_id

select
	customer.first_name,
	customer.last_name,
    rental.rental_date,
	film.title
FROM 
	customer
	inner join rental on customer.customer_id = rental.customer_id
    inner join inventory on rental.inventory_id = inventory.inventory_id
    inner join film on film.film_id = inventory.film_id
    where
    customer.customer_id = 8;
Select
film_id, title, replacement_cost
from
film
where replacement_cost =

(
	select
	max(replacement_cost)
	from film
);

select * from film where length =
(select
max(length)
from
film)
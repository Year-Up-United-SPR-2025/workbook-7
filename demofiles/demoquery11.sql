SELECT 
film.title,

concat(actor.first_name , " " , actor.last_name) as 'Actor'
from film
inner join film_actor on film.film_id = film_actor.film_id
inner join actor on film_actor.actor_id = actor.actor_id
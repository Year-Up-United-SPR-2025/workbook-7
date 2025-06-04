select 
* 
from 
sakila.actor;

update actor 
Set first_name = "Jordathan"
,
last_name = "A"
where 
actor.actor_id = 201;
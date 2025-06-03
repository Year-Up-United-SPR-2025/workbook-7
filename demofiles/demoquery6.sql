select
rating,
avg(length) 'Length in minutes',
COUNT(*) 'Number of films'
from
film
group by raing
having count(*) >= 200
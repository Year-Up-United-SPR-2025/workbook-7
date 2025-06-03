select
title, rating, avg(length)
from
film
group by rating, title;
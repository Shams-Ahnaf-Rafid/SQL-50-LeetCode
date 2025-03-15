(select u.name as results
from Users u
left join MovieRating mr
on u.user_id = mr.user_id
group by u.name
order by count(mr.user_id) desc, u.name
limit 1)
union all
(select m.title as results
from Movies m
left join MovieRating mr
on m.movie_id = mr.movie_id
where extract(year_month from mr.created_at) = 202002
group by m.title
order by avg(mr.rating) desc, m.title
limit 1)
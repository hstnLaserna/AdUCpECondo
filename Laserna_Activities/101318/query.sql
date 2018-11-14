use /*surname*/;


select first_name, sum(pages), avg(pages), max(pages)
from books as b
left join authors as a 
on a.id=b.author_id
where a.first_name like 'r%'
group by first_name
order by avg(pages)
limit 5;







select title
from books
where pages >(
				select avg(pages)
				from books as b
				where books.author_id=b.author_id
				)
order by title
limit 5;








select first_name, last_name
from authors as a
where (
		select count(*) from books as b 
		where b.author_id=a.id
		and b.pages>(select avg(pages) from books)
        )>=2
order by a.last_name, a.first_name
limit 5;
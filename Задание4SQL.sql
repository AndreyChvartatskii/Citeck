
declare @t table (num int)
insert into @t (num) values(1),(2),(4),(7),(8),(11)

declare @t2 table (n int, id INT NOT NULL IDENTITY);

WITH CTE AS(
  SELECT 1 N UNION ALL SELECT N+1 FROM CTE WHERE N<11
)
insert into @t2
select n from (
select * from cte c left outer join @t t on c.n = t.num
) tt where num is null

select * from @t2​
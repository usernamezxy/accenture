create view score_cate as
select a.content_id, a.type, b.score,c.category
from reactions as a
left join reactiontypes as b
on a.type=b.type
left join content as c
on c.Content_ID=a.Content_ID;

select category, sum(score) as total_score
from score_cate
group by category
order by total_score desc
limit 5;
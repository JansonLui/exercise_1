select c.measure_name, max(b.score), min(b.score), max(b.score) - min(b.score) as vary 
from effective_readmissions_care_mod b, measures_mod c 
where b.measure_id = c.measure_id and b.score > 0 
group by c.measure_name order by vary desc limit 10;

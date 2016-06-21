select b.measure_id, c.measure_name, max(b.score) - min(b.score) as variability from effective_care_mod b join measures_mod c on b.measure_id = c.measure_id 
where b.score > 0 group by b.measure_id, c.measure_name order by variability desc limit 10;

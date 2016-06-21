select a.state, round(avg(b.score),2) as average from hospitals_mod a right outer join effective_readmissions_care_mod b on a.provider_id = b.provider_id 
where b.score > 0 group by a.state order by average desc limit 10;

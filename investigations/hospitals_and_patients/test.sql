select x.name, d.overall_ach, d.overall_imp, d.overall_dim, d.base_score, d.consistency_score from surveys_responses d join
(select a.provider_id as id, a.hospital_name as name, round(avg(b.score),2) as average from hospitals_mod a
right outer join effective_readmissions_care_mod b on a.provider_id = b.provider_id where b.score > 0 
group by a.provider_id, a.hospital_name)x on d.provider_number = x.id group by x.name order by d.base_score desc limit 10;

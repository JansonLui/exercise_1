select y.provider_id, y.hospital_name, y.average, x.overall_hosp_ach, x.overall_hosp_imp, x.overall_hosp_dim, x.hosp_assess_base, x.hosp_assess_consistency 
from surveys_responses_mod x join (select a.provider_id, a.hospital_name, round(avg(b.score),2) as average from hospitals_mod a, 
effective_readmissions_care_mod b where a.provider_id = b.provider_id and b.score > 0 
group by a.provider_id, a.hospital_name)y on x.provider_number = y.provider_id order by y.average desc limit 10;

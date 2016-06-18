create external	table if not exists effective_care
(provider_id string, hospital_nam string, address string, city string, state string, zip_code string, county_name string, phone_number string, 
condition string, measure_id string, measure_name string, score string, sample string, footnote	string,
measure_start_date string, measure_end_date string)
row format delimited fields terminated by '\t' stored as textfile location '/user/w205/hospital_compare/effective_care';

create external table if not exists hospitals
(provider_id string, hopital_name string, address string, city string, state string, zip_code string,
county_name string, phone_number string, hospital_type string, hospital_ownership string, emergency_services string)
row format delimited fields terminated by '\t' stored as textfile location '/user/w205/hospital_compare/hospitals';

create external table if not exists measures
(measure_name string, measure_id string, measure_start_quarter string, measure_start_date string,  measure_end_quarter string, measure_end_date string)
row format delimited fields terminated by '\t' lines terminated by '\n' stored as textfile location '/user/w205/hospital_compare/measures';

create external	table if not exists readmissions
(provider_id string, hospital_name string, address string, city string,	state string, zip_code string,
county_name string, phone_number string, measure_name string, measure_id string, compared_to_national string, denominator string,
score string, lower_estimate string, higher_estimate string, footnote string, measure_start_date string, measure_end_date string)
row format delimited fields terminated by '\t' stored as textfile location '/user/w205/hospital_compare/readmissions';

create external	table if not exists surveys_responses
(provider_number string, hospital_name string, address string, city string, state string, zip_code string, county_name string,
comm_nurse_ach string, comm_nurse_imp string, comm_nurse_dim string, comm_doc_ach string, comm_doc_imp string, comm_doc_dim string,
resp_hosp_ach string, resp_hosp_imp string, resp_hosp_dim string, pain_manage_ach string, pain_manage_imp string, pain_manage_dim string,
comm_med_ach string, comm_med_imp string, comm_med_dim string, cln_quiet_hosp_ach string, cln_quiet_hosp_imp string, cln_quiet_hosp_dim string,
discharge_ach string, discharge_imp string, discharge_dim string, overall_hosp_ach string, overall_hosp_imp string, overall_hosp_dim string,
hosp_assess_base string, hosp_assess_consistency string)
row format delimited fields terminated by '\t' stored as textfile location '/user/w205/hospital_compare/surveys_responses';

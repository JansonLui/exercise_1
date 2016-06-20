create table if not exists effective_care_slim
as select provider_id, measure_id, score from effective_care;

create table if not exists hospitals_slim
as select provider_id, hospital_name, address, city, state, zip_code, county_name, phone_number, hospital_type,
hospital_ownership, emergency_services from hospitals;

create table if not exists measures_slim
as select a.measure_id, a.measure_name, b.condition, a.measure_start_date, a.measure_end_date from measures a, effective_care b where a.measure_id = b.measure_id;

create table if not exists readmissions_slim
as select provider_id, measure_id, score from effective_care;

create table if not exists surveys_responses_slim
as select provider_number, comm_nurse_ach, comm_nurse_imp, comm_nurse_dim, comm_doc_ach, comm_doc_imp, comm_doc_dim,
resp_hosp_ach, resp_hosp_imp, resp_hosp_dim, pain_manage_ach, pain_manage_imp, pain_manage_dim,
comm_med_ach, comm_med_imp, comm_med_dim, cln_quiet_hosp_ach, cln_quiet_hosp_imp, cln_quiet_hosp_dim,
discharge_ach, discharge_imp, discharge_dim, overall_hosp_ach, overall_hosp_imp, overall_hosp_dim,
hosp_assess_base, hosp_assess_consistency from surveys_responses;


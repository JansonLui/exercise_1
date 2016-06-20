create table if not exists surveys_responses_mod
as select provider_number, comm_nurse_ach, comm_nurse_imp, comm_nurse_dim, comm_doc_ach, comm_doc_imp, comm_doc_dim,
resp_hosp_ach, resp_hosp_imp, resp_hosp_dim, pain_manage_ach, pain_manage_imp, pain_manage_dim,
comm_med_ach, comm_med_imp, comm_med_dim, cln_quiet_hosp_ach, cln_quiet_hosp_imp, cln_quiet_hosp_dim,
discharge_ach, discharge_imp, discharge_dim, overall_hosp_ach, overall_hosp_imp, overall_hosp_dim,
hosp_assess_base, hosp_assess_consistency from surveys_responses;

create table if not exists readmissions_mod
as select provider_id, measure_id, score from effective_care;

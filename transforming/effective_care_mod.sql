create table if not exists effective_care_mod
as select provider_id, measure_id, score from effective_care;

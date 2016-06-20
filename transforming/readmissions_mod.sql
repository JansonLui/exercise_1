create table if not exists readmissions_mod
as select provider_id, measure_id, compared_to_national, denominator, score, lower_estimate, higher_estimate, footnote from readmissions;

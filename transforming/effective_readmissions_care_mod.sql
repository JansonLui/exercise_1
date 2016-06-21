create table if not exists effective_readmissions_care_mod
as select provider_id, measure_id, score, footnote from effective_care union all select provider_id, measure_id, score, footnote from readmissions;

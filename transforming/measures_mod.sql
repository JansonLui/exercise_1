create table if not exists measures_mod
as select a.measure_id, a.measure_name, b.condition, a.measure_start_quarter, a.measure_start_date, a.measure_end_quarter, a.measure_end_date from measures a, effective_care b where a.measure_id = b.measure_id;


create table if not exists hospitals_mod
as select provider_id, hospital_name, address, city, state, zip_code, county_name, phone_number, hospital_type,
hospital_ownership, emergency_services from hospitals;

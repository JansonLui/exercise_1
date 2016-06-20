create external table hospitals
(provider_id string, hospital_name string, address string, city string, state string, zip_code string,
county_name string, phone_number string, hospital_type string, hospital_ownership string, emergency_services string)
row format delimited fields terminated by ',' enclosed by "''" lines terminated by '\n' stored as textfile location '/user/w205/hospital_compare/hospitals';

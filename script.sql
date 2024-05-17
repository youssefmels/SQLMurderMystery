-- You vaguely remember that the crime was a ​murder​ that occurred sometime on ​Jan.15, 2018​ and that it took place in ​SQL City.

select * from crime_scene_report where date = 20180115 and city = 'SQL City' and type = 'murder'
  
select * from person where address_street_name = "Northwestern Dr" and address_number IN (select MAX(address_number) from person) or (address_street_name = "Franklin Ave" and name LIKE "Annabel%")
  
select * from interview where person_id = 14887 or person_id = 16371
  
select * from drivers_license where plate_number LIKE "%H42W%" and gender = 'male'
  
select * from get_fit_now_member where membership_status = 'gold' and id LIKE "48Z%"
  
select * from get_fit_now_check_in where membership_id = '48Z7A' or membership_id = '48Z55'
  
select name, id, person_id, check_in_time,check_out_time, check_in_date from get_fit_now_check_in c INNER JOIN get_fit_now_member m ON c.membership_id = m.id where check_in_date = 20180109 and membership_status = 'gold' and check_out_time > 1600;

select * from interview where person_id = 28819 or person_id = 67318;

select date, event_name, person_id, name, license_id, plate_number, height, eye_color, hair_color, car_make, car_model from facebook_event_checkin fb inner join person p on fb.person_id = p.id inner join drivers_license dl on p.license_id = dl.id where date LIKE "2017%%12" and event_name LIKE "%SQL%" and car_model = "Model S" and hair_color = "red" and height BETWEEN 65 and 67

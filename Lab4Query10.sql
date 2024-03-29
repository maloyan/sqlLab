/*Выбрать страну, про которую больше всего репортажей*/
SELECT TOP(1) official_name, COUNT(*) as num_of_reps
FROM REPORTAGE
JOIN EVENT ON event.event_id = reportage.event_id
JOIN ADDRESS ON address.address_id = event.address_id
JOIN CITY ON city.city_id = address.city_id
JOIN COUNTRY ON country.country_id = city.country_id
GROUP BY official_name
ORDER BY num_of_reps DESC
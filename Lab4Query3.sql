/*Корреспондент, страна, среднее время репортажа, среднее количество репортажей в месяц, средняя степень опасности репортажа.*/
SELECT first_name, last_name, official_name, COUNT(*)/(MONTH(experience) + 12 * (YEAR(GetDate()) - YEAR(experience))) AS  avg_reportages_per_month, AVG(duration) AS avg_duration, COUNT(*) AS num_of_reportages, AVG(danger_id) AS avg_danger
FROM CORRESPONDENT
JOIN PERSON ON person.person_id = correspondent.person_id
JOIN ADDRESS ON correspondent.address_id = address.address_id
JOIN CITY ON city.city_id = address.city_id
JOIN COUNTRY ON country.country_id = city.country_id
JOIN CORRESPONDENT_VIDEO ON correspondent_video.correspondent_id = correspondent.correspondent_id
JOIN REPORTAGE ON reportage.reportage_id = correspondent_video.reportage_id  
JOIN VIDEO ON correspondent_video.video_id = video.video_id
JOIN EVENT ON reportage.event_id = event.event_id
JOIN EVENT_TYPE ON event_type.event_type_id = event.event_type_id
GROUP BY first_name, last_name, official_name, YEAR(date), MONTH(date), experience
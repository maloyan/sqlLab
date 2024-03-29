/*Страна, тип события, количество корреспондентов, освещающих этот тип событий, среднее время в выпуске новостей, посвященное этому типу события.*/
SELECT country.official_name, COUNT(*) as correspondent_num, AVG(duration) as avg_duration
FROM EVENT
JOIN ADDRESS ON event.address_id = address.address_id
JOIN CITY ON city.city_id = address.city_id
JOIN COUNTRY ON country.country_id = city.country_id
JOIN EVENT_TYPE ON event_type.event_type_id = event.event_type_id
JOIN REPORTAGE ON reportage.event_id = event.event_id
JOIN CORRESPONDENT_VIDEO ON correspondent_video.reportage_id = reportage.reportage_id
JOIN CORRESPONDENT ON correspondent.correspondent_id = correspondent_video.correspondent_id
JOIN VIDEO ON video.video_id = correspondent_video.video_id
GROUP BY country.official_name, event.event_type_id

/*Выбрать список репортажей из 'Москвы' за год, корреспондента, их представляющего и время репортажа.*/
SELECT event_name, city_name, date, person.first_name, person.last_name, news_time
FROM REPORTAGE
JOIN EVENT ON reportage.event_id = event.event_id
JOIN ADDRESS ON address.address_id = event.address_id
JOIN CITY ON city.city_id = address.city_id
JOIN CORRESPONDENT_VIDEO ON correspondent_video.reportage_id = reportage.reportage_id 
JOIN CORRESPONDENT ON correspondent.correspondent_id = correspondent_video.correspondent_id
JOIN PERSON ON correspondent.person_id = person.person_id
WHERE city.city_name = 'Moscow'

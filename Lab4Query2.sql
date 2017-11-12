/*Скомпоновать список сюжетов, их длительность, корреспондент 27/09/2017.*/
SELECT reportage.reportage_id, event_name, person.first_name, person.last_name,duration
FROM REPORTAGE
JOIN EVENT ON reportage.event_id = event.event_id
JOIN CORRESPONDENT_VIDEO ON reportage.reportage_id = correspondent_video.reportage_id
JOIN VIDEO ON video.video_id = correspondent_video.video_id
JOIN CORRESPONDENT ON correspondent_video.correspondent_id = correspondent.correspondent_id
JOIN PERSON ON correspondent.person_id = person.person_id
WHERE date = '27/09/2017'

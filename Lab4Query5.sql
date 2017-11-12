/*Удалим из таблицы видео по требонправообладателя Marinda Vigo*/
DELETE FROM WITNESS_VIDEO
WHERE witness_video_id IN (
	SELECT witness_video_id
	FROM WITNESS_VIDEO
	JOIN PERSON ON person.person_id = witness_video.person_id
	WHERE first_name = 'Marinda' AND last_name = 'Vigo' 
)
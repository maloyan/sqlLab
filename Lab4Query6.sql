/*Удалим из таблицы репортажей те, длительность которых меньше 100 секунд*/
/*Не сработает из-за ограничений целостности*/
/*
DELETE FROM REPORTAGE
WHERE reportage.reportage_id IN (
	SELECT reportage.reportage_id
	FROM REPORTAGE
	JOIN CORRESPONDENT_VIDEO ON correspondent_video.reportage_id = reportage.reportage_id
	JOIN VIDEO VC ON VC.video_id = correspondent_video.video_id
	LEFT JOIN WITNESS_VIDEO ON witness_video.reportage_id = reportage.reportage_id
	LEFT JOIN VIDEO VW ON VW.video_id = witness_video.video_id
	GROUP BY reportage.reportage_id
	HAVING (SUM(VC.duration) + ISNULL(SUM(VW.duration), 0)) < 100
)
*/
/*Удалим из таблицы видео по требонправообладателя Marinda Vigo*/
DELETE FROM WITNESS_VIDEO
WHERE witness_video_id IN (
	SELECT witness_video_id
	FROM WITNESS_VIDEO
	JOIN PERSON ON person.person_id = witness_video.person_id
	WHERE first_name = 'Marinda' AND last_name = 'Vigo' 
)
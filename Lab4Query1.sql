/*Удалим из таблицы репортажей те, длительность которых меньше 100 секунд*/

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


--Список корреспондентов, время выпуска новостей, дата, длительность сюжета этого корреспондента в этом выпуске.

IF EXISTS(
	SELECT * FROM sys.views
	WHERE [name] = 'CorRepInfo' AND
	schema_id = SCHEMA_ID('dbo'))
DROP VIEW CorRepInfo

GO
CREATE VIEW CorRepInfo AS(

	SELECT first_name + ' ' + last_name AS correspondent, CONVERT(VARCHAR(5), news_time, 108) AS news_time, 
		   CONVERT(VARCHAR(10), news_time, 111) AS date, SUM(video.duration) as correspondent_video_duration_secs
	FROM REPORTAGE
	JOIN CORRESPONDENT ON reportage.correspondent_id = correspondent.correspondent_id
	JOIN CORRESPONDENT_VIDEO ON correspondent_video.reportage_id = reportage.reportage_id
	JOIN VIDEO ON correspondent_video.video_id = video.video_id
	JOIN PERSON ON person.person_id = correspondent.person_id
	GROUP BY person.person_id, first_name, last_name, news_time
)

GO
SELECT * FROM CorRepInfo
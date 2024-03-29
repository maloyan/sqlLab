--Корреспондент, специфика, средняя степень опасности сюжетов, количество сюжетов за месяц.
IF EXISTS(
	SELECT * FROM sys.views
	WHERE [name] = 'CorInfo' AND
	schema_id = SCHEMA_ID('dbo'))
DROP VIEW CorInfo

GO
CREATE VIEW CorInfo AS(
	SELECT person.first_name as name, person.last_name AS lastname, specify, AVG(danger.danger_id) AS average_danger, COUNT(*) as num_of_reportages_for_month
	FROM CORRESPONDENT
	JOIN PERSON ON person.person_id = correspondent.person_id
	JOIN CORRESPONDENT_VIDEO ON correspondent_video.correspondent_id = correspondent.correspondent_id
	JOIN REPORTAGE ON reportage.reportage_id = correspondent_video.reportage_id
	JOIN EVENT ON reportage.event_id = event.event_id
	JOIN EVENT_TYPE ON event_type.event_type_id = event.event_type_id
	JOIN DANGER ON danger.danger_id = event_type.danger_id
	WHERE reportage.news_time > DATEADD(m, -1, GETDATE())-- AND person.first_name = 'George'
	GROUP BY person.person_id, person.first_name, person.last_name, specify
)
--WITH CHECK OPTION;
--GO
--UPDATE CorInfo SET name = 'a'

GO
SELECT * FROM CorInfo
/*использовать Check option*/
--Специфика, количество корреспондентов с этой спецификой, их средняя зарплата, среднее время в выпусках новостей.

IF EXISTS(
	SELECT * FROM sys.views
	WHERE [name] = 'SpecifyInfo' AND
	schema_id = SCHEMA_ID('dbo'))
DROP VIEW SpecifyInfo

GO
CREATE VIEW SpecifyInfo AS(

	SELECT specify, COUNT(*) AS num_of_corrs, AVG(salary) AS avg_salary, AVG(duration) AS avg_duration_in_news
	FROM CORRESPONDENT
	JOIN CORRESPONDENT_VIDEO ON correspondent_video.correspondent_id = correspondent.correspondent_id
	JOIN REPORTAGE ON correspondent_video.reportage_id = reportage.reportage_id
	GROUP BY specify
)

GO
SELECT * FROM SpecifyInfo

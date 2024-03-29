--Месяц, город, количество репортажей из этой страны в месяц, средняя продолжительность репортажа, основной корреспондент.

IF EXISTS(
	SELECT * FROM sys.views
	WHERE [name] = 'RepFromCountryInfo' AND
	schema_id = SCHEMA_ID('dbo'))
DROP VIEW RepFromCountryInfo

GO
CREATE VIEW RepFromCountryInfo AS(

	SELECT DATENAME(MM, date) as month, YEAR(date) as year, official_name, MAX(duration) as dur, person.first_name, person.last_name
	FROM REPORTAGE
	JOIN CORRESPONDENT ON reportage.correspondent_id = correspondent.correspondent_id
	JOIN PERSON ON person.person_id = correspondent.person_id
	JOIN EVENT ON reportage.event_id = event.event_id
	JOIN ADDRESS ON event.address_id = address.address_id
	JOIN CITY ON city.city_id = address.city_id
	JOIN COUNTRY ON country.country_id = city.country_id
	JOIN (
		SELECT country.official_name as cn, MAX(duration) as maxdur
		FROM REPORTAGE
		JOIN EVENT ON reportage.event_id = event.event_id
		JOIN ADDRESS ON event.address_id = address.address_id
		JOIN CITY ON city.city_id = address.city_id
		JOIN COUNTRY ON country.country_id = city.country_id
		GROUP BY country.official_name
	) tmp ON tmp.cn = country.official_name and tmp.maxdur = reportage.duration
	GROUP BY DATENAME(MM, date), YEAR(date), official_name, correspondent.correspondent_id, person.first_name, person.last_name
)

GO
SELECT * FROM RepFromCountryInfo
/*Основной корреспондент это тот, кто больше всего сделал репортажей в стране*/
/*avg точность с двумя нулями*/
/*соеденить по странам*/
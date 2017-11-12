/*Поменять email корреспондента Fiona Bruce*/
UPDATE PERSON 
SET email = 'FB@bbc.com'
WHERE email IN (
	SELECT email
	FROM CORRESPONDENT
	JOIN PERSON ON person.person_id = correspondent.person_id
	WHERE first_name = 'Fiona' AND last_name = 'Bruce' 
)
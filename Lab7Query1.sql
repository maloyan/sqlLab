CREATE LOGIN test WITH PASSWORD = 'Test123+'
CREATE USER test FOR LOGIN test

GRANT SELECT, INSERT, UPDATE 
	ON VIDEO 
	TO test

GRANT SELECT (event_id, address_id, event_name) 
	ON EVENT 
	TO test
GRANT UPDATE (address_id, event_name)  
	ON EVENT 
	TO test

GRANT SELECT 
	ON REPORTAGE 
	TO test

--CorRepInfo from Lab5Query3
GRANT SELECT 
	ON CorRepInfo 
	TO test

CREATE ROLE news_time_changer 
GRANT UPDATE (news_time)
	ON CorRepInfo
	TO news_time_changer
EXEC sp_addrolemember 'news_time_changer', 'test'


CREATE LOGIN mem WITH PASSWORD = 'Test123+'
GRANT CONNECT TO guest
REVOKE CONNECT TO guest

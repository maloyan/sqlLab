--Выбрать имена всех таблиц, созданных назначенным пользователем базы данных.
SELECT USER_NAME(sys.schemas.principal_id) AS [user], 
       sys.tables.name                     AS table_name
FROM sys.tables
JOIN sys.schemas ON sys.schemas.schema_id = sys.tables.schema_id
WHERE sys.tables.object_id NOT IN (SELECT major_id FROM sys.extended_properties)
 AND USER_NAME(sys.schemas.principal_id) = 'test'
--Выбрать имя таблицы, имя столбца таблицы, признак того, допускает ли данный столбец
--NULL-значения, название типа данных столбца таблицы, размер этого типа данных - для всех
--таблиц, созданных назначенным пользователем базы данных и всех их столбцов.
SELECT so.name                    AS table_name, 
       sc.name                    AS column_name, 
       sc.is_nullable             AS [isnull],
	   st.name                    AS [type_name], 
       sc.max_length              AS [size] 
FROM sys.objects so
JOIN sys.columns sc ON (sc.object_id = so.object_id)
JOIN sys.types st   ON (sc.user_type_id = st.user_type_id)
JOIN sys.schemas ss ON (ss.schema_id = so.schema_id)
WHERE so.type = 'U'                     AND 
      USER_NAME(ss.principal_id) ='dbo' AND 
      so.object_id NOT IN (SELECT major_id FROM sys.extended_properties)


--Выбрать название ограничения целостности (первичные и внешние ключи), имя таблицы, в
--которой оно находится, признак того, что это за ограничение ('PK' для первичного ключа и 'F'
--для внешнего) - для всех ограничений целостности, созданных назначенным пользователем
--базы данных.
SELECT so1.name                   AS key_name, 
       so2.name                   AS table_name, 
       so1.type
FROM sys.objects so1, sys.objects so2
JOIN sys.schemas ss ON ss.schema_id = so2.schema_id
WHERE so1.parent_object_id = so2.object_id AND
      (so1.type = 'F' OR so1.type = 'PK' OR so1.type = 'C')  AND 
      USER_NAME(ss.principal_id) ='dbo'    AND
	  so1.object_id NOT IN (SELECT major_id FROM sys.extended_properties)
--SELECT * FROM sys.objects
--Выбрать название внешнего ключа, имя таблицы, содержащей внешний ключ, имя таблицы,
--содержащей его родительский ключ - для всех внешних ключей, созданных назначенным
--пользователем базы данных.
SELECT sfk.name AS kname, 
       so1.name AS fname,  
	   so2.name AS kname
FROM sys.foreign_keys sfk
JOIN sys.objects so1              ON sfk.parent_object_id = so1.object_id
JOIN sys.objects so2              ON sfk.referenced_object_id = so2.object_id
JOIN sys.foreign_key_columns sfkc ON sfkc.constraint_object_id = sfk.object_id
JOIN sys.schemas ss               ON ss.schema_id = so1.schema_id
WHERE USER_NAME(ss.principal_id) ='dbo'

--Выбрать название представления, SQL-запрос, создающий это представление - для всех
--представлений, созданных назначенным пользователем базы данных.
SELECT TABLE_NAME                 AS view_name, 
       VIEW_DEFINITION            AS [script]
FROM INFORMATION_SCHEMA.VIEWS
JOIN sys.schemas ss ON SCHEMA_ID(TABLE_SCHEMA) = ss.schema_id
WHERE USER_NAME(ss.principal_id) ='dbo'

--Выбрать название триггера, имя таблицы, для которой определен триггер - для всех
--триггеров, созданных назначенным пользователем базы данных.
SELECT sys.triggers.name          AS trigger_name,
       st.name                    AS table_name 
FROM sys.triggers
JOIN sys.tables  st ON st.object_id = parent_id
JOIN sys.schemas ss ON ss.schema_id = st.schema_id
WHERE USER_NAME(ss.principal_id) ='dbo'

--доп задание: вывести два столбца: названия базы данных и файл для всех баз на сервере
SELECT DISTINCT name, physical_name AS [file] 
	FROM  sys.database_files sdf
--в какой то базе для каждой роли список пользователей через запятую
SELECT     rp1.name, [users] = replace
                            ((SELECT mp.name AS [data()]
                              FROM sys.database_role_members drm
							  JOIN sys.database_principals rp ON drm.role_principal_id = rp.principal_id
                              JOIN sys.database_principals mp ON drm.member_principal_id = mp.principal_id
                              WHERE  rp1.name = rp.name
                              ORDER BY rp1.name FOR xml path('')), ' ', ' , ')
FROM sys.database_role_members drm1
JOIN sys.database_principals rp1 ON drm1.role_principal_id = rp1.principal_id
WHERE    rp1.name IS NOT NULL
GROUP BY rp1.name
----------
CREATE LOGIN test WITH PASSWORD = 'Test123+'
CREATE ROLE news_time_changer 
GRANT UPDATE (news_time)
	ON CorRepInfo
	TO news_time_changer
EXEC sp_addrolemember 'news_time_changer', 'test'

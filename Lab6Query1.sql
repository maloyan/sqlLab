--1
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET TRANSACTION ISOLATION LEVEL READ COMMITTED
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
------------------------------------------------
--Lost updates(1)
--2
BEGIN TRANSACTION
SELECT salary FROM CORRESPONDENT WHERE person_id = 2
UPDATE CORRESPONDENT SET salary = salary + 10 WHERE person_id = 2
SELECT salary FROM CORRESPONDENT WHERE person_id = 2
COMMIT
------------------------------------------------
--Lost updates(2)
--2
--продемонстировать и дать определение тупика на примерах
/*Тупик - это состояние, когда два (или больше) процесса 
пытаются обратиться к ресурсу, который заблокирован другим 
процессом. Поскольку каждый процесс запрашивает ресурс 
другого процесса, ни один из них не может быть завершен. 
Когда SQL Server обнаруживает тупик, он откатывает транзакцию, 
которая имеет наименьшую продолжительность обработки и 
возвращает в приложение сообщение об ошибке 1205. 
Сообщение об ошибке 1205 прерывает выполнение текущего пакета 
и откатывает текущую транзакцию.*/
BEGIN TRANSACTION
UPDATE PERSON SET email = 'deadlock@gmail.com' WHERE person_id = 1
UPDATE CORRESPONDENT SET salary = 1001  WHERE person_id = 1
COMMIT
ROLLBACK
SELECT * FROM PERSON WHERE person_id = 1
SELECT * FROM CORRESPONDENT WHERE person_id = 1
--объяснить почему здесь тупик
--показать откат транзакций при ошибках
SELECT * FROM QUALITY WHERE quality_id = 1
SELECT * FROM CORRESPONDENT WHERE person_id = 1

BEGIN TRANSACTION
SELECT @@SPID
UPDATE CORRESPONDENT SET salary = 2015  WHERE person_id = 1
COMMIT
-----------
BEGIN TRANSACTION
DECLARE @salary int
SELECT @salary = salary FROM CORRESPONDENT WHERE person_id = 1
WAITFOR DELAY '00:00:10'
SET @salary = @salary + 500
UPDATE CORRESPONDENT SET salary = @salary WHERE person_id = 1
PRINT @salary
COMMIT
--SELECT salary FROM CORRESPONDENT WHERE person_id = 1
------------------------------------------------
--Dirty read
--3
BEGIN TRANSACTION
SELECT email FROM PERSON WHERE person_id = 1
COMMIT
------------------------------------------------
--Non-repeatable reads
--2
BEGIN TRANSACTION
SELECT email FROM PERSON WHERE person_id = 2
--WAITFOR DELAY '00:00:10'
SELECT email FROM PERSON WHERE person_id = 2
COMMIT
------------------------------------------------
--Phantoms
--2
BEGIN TRAN
SELECT COUNT(*) FROM PERSON
WAITFOR DELAY '00:00:10'
SELECT COUNT(*) FROM PERSON
COMMIT

SELECT @@TRANCOUNT
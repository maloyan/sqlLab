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
UPDATE CORRESPONDENT SET salary = salary + 15 WHERE person_id = 2
SELECT salary FROM CORRESPONDENT WHERE person_id = 2
COMMIT
------------------------------------------------
--deadlock
BEGIN TRANSACTION
UPDATE CORRESPONDENT SET salary = 1002  WHERE person_id = 1
UPDATE PERSON SET email = 'deadlock2@gmail.com' WHERE person_id = 1
COMMIT
ROLLBACK
KILL 52
SELECT * FROM QUALITY WHERE quality_id = 1
SELECT * FROM CORRESPONDENT WHERE person_id = 1
------------------------------------------------
--Lost updates(2)
--3
BEGIN TRANSACTION
DECLARE @salary int
SELECT @salary = salary FROM CORRESPONDENT WHERE person_id = 1
WAITFOR DELAY '00:00:1'
SET @salary = @salary + 100
UPDATE CORRESPONDENT SET salary = @salary WHERE person_id = 1
PRINT @salary
COMMIT
--SELECT salary FROM CORRESPONDENT WHERE person_id = 1
------------------------------------------------
--Dirty read
--2
BEGIN TRANSACTION
UPDATE PERSON SET email = 'GAlagiahTest@bbc.com' WHERE person_id = 1
--WAITFOR DELAY '00:00:10'
ROLLBACK
------------------------------------------------
--Non-repeatable reads
--3(Change email and execute in 10 seconds and )
BEGIN TRANSACTION
UPDATE PERSON SET email = 'd@bbc.com' WHERE person_id = 2
COMMIT
------------------------------------------------
--Phantoms
--3
BEGIN TRANSACTION
INSERT PERSON ([first_name], [last_name], [description]) 
VALUES ('a', 'b', 'c')
COMMIT

SELECT @@TRANCOUNT
--
--Detach DDL Statements Generation Script
--Author: Artemakis Artemiou
--Modified by: Jaime Olmo
--Description: Changes to made it functional on MSSQL 2000
--

PRINT '--' 
PRINT '--Script for Detaching all DBs in a SQL Server Instance' 
PRINT '--' 
PRINT '' 

SET nocount ON 

DECLARE @dbname nvarchar(128) 
DECLARE dblist_cursor CURSOR FOR 
  SELECT [name] 
  FROM   master..sysdatabases 

OPEN dblist_cursor 

FETCH next FROM dblist_cursor INTO @dbname 

WHILE @@FETCH_STATUS = 0 
  BEGIN 
    print 'EXEC sp_detach_db ''' + @dbname + ''', ''true'';'
    FETCH next FROM dblist_cursor INTO @dbname 
  END 

CLOSE dblist_cursor 
DEALLOCATE dblist_cursor 


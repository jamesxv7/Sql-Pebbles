-- To show only tables from a particular database
SELECT TABLE_NAME FROM <DATABASE_NAME>.INFORMATION_SCHEMA.Tables 

-- To show colum information
sp_help '<TableName>'
-- or
SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'TableName' 

  -- List all databases in a SQL Server instance
  SELECT [name] 
  FROM   master.sys.databases 
  WHERE  database_id > 4 

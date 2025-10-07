/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse(DataWH)' after checking if it already exists. 
    Additionally, the script sets up three schemas within the database: 'bronze', 'silver', and 'gold'.
	
*/

USE master;
GO

-- Check if the database DWH exists, and if not, create it
IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWH')
BEGIN
    CREATE DATABASE DataWH;
END
GO


USE DataWH;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO


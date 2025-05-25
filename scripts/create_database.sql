/*
========================================================
Create Database and Schemas
========================================================
Script Purpose:
	This script creates a new Database after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script
	sets up three schemas within the database.

WARNING:
	This script drops the existing database!
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE
	DROP DATABASE DataWarehouse
END;
GO

-- Create the 'DateWarehouse' database
Create DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO 

CREATE SCHEMA gold;
GO


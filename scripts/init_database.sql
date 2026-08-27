/*
=============================================================
Create Database and Schemas for Fority Concept
=============================================================
Script Purpose:
    This script creates a new database named 'Fority_DW' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
    
WARNING:
    Running this script will drop the entire 'Fority_DW' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO

-- Drop and recreate the 'Fority_DW' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'Fority_DW')
BEGIN
    ALTER DATABASE Fority_DW SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Fority_DW;
END;
GO

-- Create the new database
CREATE DATABASE Fority_DW;
GO

-- Switch to the newly created database to create the schemas
USE Fority_DW;
GO

-- Create Schemas for the Medallion Architecture
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO 
    

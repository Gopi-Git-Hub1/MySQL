
-- MySQL Installation and Setup (for Ubuntu)
-- Run these commands in your terminal (not in MySQL shell):
--
-- 1. sudo apt update
-- 2. sudo apt upgrade
-- 3. sudo apt install mysql-server
-- 4. sudo service mysql start
-- 5. sudo mysql_secure_installation
-- 6. sudo mysql -u root -p

-- Basic MySQL Usage:

-- Create a new database
CREATE DATABASE my_sql_practice;

-- Select the database to use
USE my_sql_practice;

-- Create the Employees table
CREATE TABLE Employees (
    ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2)
);

-- Insert a record into the Employees table
INSERT INTO Employees (ID, Name, Department, Salary)
VALUES (1, 'Gopi Chappidi', 'BCP', 75000.00);

-- Select all records from Employees
SELECT * FROM Employees;

-- Select specific columns with a condition
SELECT Name, Salary FROM Employees WHERE Department = 'BCP';

-- Update a record in the Employees table
UPDATE Employees SET Salary = 80000.00 WHERE ID = 1;

-- Insert another record (note: change ID to avoid duplicate key error)
INSERT INTO Employees (ID, Name, Department, Salary)
VALUES (2, 'Gopi', 'MCP', 75000.00);

-- Delete a record from the Employees table
DELETE FROM Employees WHERE ID = 2;

-- Show all tables in the current database
SHOW TABLES;

-- Drop the Employees table
DROP TABLE Employees;

-- Show all databases
SHOW DATABASES;

-- Drop a database (replace 'database_name' with your actual database name)
DROP DATABASE database_name;

-- Exit MySQL shell
-- This command is used inside the MySQL shell to exit the session
-- Example:
-- mysql> exit;

-- Check MySQL service status
-- This command checks whether the MySQL server is running
-- sudo service mysql status;

-- Start MySQL service
-- This command starts the MySQL server if it's not already running
-- sudo service mysql start;

-- Backup database using mysqldump (default socket)
-- This command attempts to dump the database 'my_sql_practic' into a file
-- Note: Ensure the database name is correct (likely 'my_sql_practice')
-- sudo mysqldump -u root -p my_sql_practic > my_sql_practic.sql;

-- Backup using TCP/IP (useful in WSL environments)
-- This forces mysqldump to use TCP/IP instead of Unix socket
-- mysqldump -h 127.0.0.1 -u root -p my_sql_practic > my_sql_practic.sql;

-- Backup with explicit host and port
-- This is helpful when connecting to MySQL server running on Windows from WSL
-- mysqldump -h localhost -P 3306 -u root -p my_sql_practic > my_sql_practic.sql;

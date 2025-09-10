-- Create a new database
CREATE DATABASE IF NOT EXISTS sample_db;

-- Use the new database
USE sample_db;

-- Create a table
CREATE TABLE IF NOT EXISTS Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Employee (name, department, salary) VALUES
('Alice', 'Engineering', 75000.00),
('Bob', 'Marketing', 65000.00),
('Charlie', 'HR', 60000.00);

-- View the data
SELECT * FROM Employee;


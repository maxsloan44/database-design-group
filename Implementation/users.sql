-- Specify the database name directly
USE inventory_management;

-- Drop users if they already exist (optional but prevents conflicts)
DROP USER IF EXISTS 'admin_user'@'localhost';
DROP USER IF EXISTS 'manager_user'@'localhost';
DROP USER IF EXISTS 'employee_user'@'localhost';

-- Create Administrator user with full privileges
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin_password';
GRANT ALL PRIVILEGES ON inventory_management.* TO 'admin_user'@'localhost';

-- Create Manager user with broader privileges on the database
CREATE USER 'manager_user'@'localhost' IDENTIFIED BY 'manager_password';
GRANT SELECT, INSERT, UPDATE ON inventory_management.* TO 'manager_user'@'localhost';

-- Create Employee user with read-only privileges on most tables and write access on specific ones
CREATE USER 'employee_user'@'localhost' IDENTIFIED BY 'employee_password';
GRANT SELECT ON inventory_management.* TO 'employee_user'@'localhost';
GRANT INSERT, UPDATE ON inventory_management.Order TO 'employee_user'@'localhost';
GRANT INSERT, UPDATE ON inventory_management.OrderDetail TO 'employee_user'@'localhost';

-- Apply the changes to privileges
FLUSH PRIVILEGES;

-- Check what users currently exist in MySQL
SELECT User, Host 
FROM mysql.user;
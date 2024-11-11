-- Drop tables if they already exist to avoid conflicts
DROP TABLE IF EXISTS `InventoryReport`;
DROP TABLE IF EXISTS `OrderDetail`;
DROP TABLE IF EXISTS `Order`;
DROP TABLE IF EXISTS `Product`;
DROP TABLE IF EXISTS `Supplier`;
DROP TABLE IF EXISTS `User`;

-- Table for Supplier (Max)
CREATE TABLE `Supplier` (
  `supplier_id` INT PRIMARY KEY AUTO_INCREMENT,
  `supplier_name` VARCHAR(255) NOT NULL,
  `contact_info` VARCHAR(255)
);

-- Table for Product (Henry)
CREATE TABLE `Product` (
  `product_id` INT PRIMARY KEY AUTO_INCREMENT,
  `product_name` VARCHAR(255) NOT NULL,
  `category` VARCHAR(100),
  `price` DECIMAL(10, 2),
  `quantity_in_stock` INT,
  `supplier_id` INT,
  FOREIGN KEY (`supplier_id`) REFERENCES `Supplier`(`supplier_id`)
);

-- Table for User (Cass)
CREATE TABLE `User` (
  `user_id` INT PRIMARY KEY AUTO_INCREMENT,
  `username` VARCHAR(50) NOT NULL UNIQUE,
  `password` VARCHAR(100) NOT NULL,
  `role` VARCHAR(50),
  `contact_info` VARCHAR(255)
);

-- Table for Order (Max)
CREATE TABLE `Order` (
  `order_id` INT PRIMARY KEY AUTO_INCREMENT,
  `order_date` DATE NOT NULL,
  `supplier_id` INT,
  `total_amount` DECIMAL(10, 2),
  `user_id` INT,
  FOREIGN KEY (`supplier_id`) REFERENCES `Supplier`(`supplier_id`),
  FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`)
);

-- Table for OrderDetail (Henry)
CREATE TABLE `OrderDetail` (
  `detail_id` INT PRIMARY KEY AUTO_INCREMENT,
  `order_id` INT,
  `product_id` INT,
  `quantity_ordered` INT,
  `price_at_order_time` DECIMAL(10, 2),
  FOREIGN KEY (`order_id`) REFERENCES `Order`(`order_id`),
  FOREIGN KEY (`product_id`) REFERENCES `Product`(`product_id`)
);

-- Table for InventoryReport (Cass)
CREATE TABLE `InventoryReport` (
  `report_id` INT PRIMARY KEY AUTO_INCREMENT,
  `report_date` DATE NOT NULL,
  `report_data` TEXT,
  `user_id` INT,
  FOREIGN KEY (`user_id`) REFERENCES `User`(`user_id`)
);
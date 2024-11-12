-- Insert sample data into Supplier
INSERT INTO `Supplier` (supplier_name, contact_info) VALUES
  ('TechSupply Co.', 'techsupply@example.com'),
  ('HomeGoods Inc.', 'contact@homegoods.com'),
  ('OfficeMart', 'info@officemart.com');

-- Insert sample data into Product
INSERT INTO `Product` (product_name, category, price, quantity_in_stock, supplier_id) VALUES
  ('Laptop', 'Electronics', 799.99, 50, 1),
  ('Office Chair', 'Furniture', 149.99, 7, 2),
  ('Desk Organizer', 'Office Supplies', 19.99, 500, 3),
  ('Monitor', 'Electronics', 199.99, 5, 1),
  ('Printer Paper', 'Office Supplies', 9.99, 700, 3);

-- Insert sample data into User
INSERT INTO `User` (username, password, role, contact_info) VALUES
  ('admin', 'password123', 'Administrator', 'admin@example.com'),
  ('jdoe', 'jdoepass', 'Manager', 'jdoe@example.com'),
  ('asmith', 'asmithpass', 'Employee', 'asmith@example.com');

-- Insert sample data into Order
INSERT INTO `Order` (order_date, supplier_id, total_amount, user_id) VALUES
  ('2023-10-01', 1, 1599.98, 1),  -- Order by admin
  ('2023-10-02', 2, 749.95, 2),   -- Order by jdoe
  ('2023-10-03', 3, 49.95, 3);    -- Order by asmith

-- Insert sample data into OrderDetail
INSERT INTO `OrderDetail` (order_id, product_id, quantity_ordered, price_at_order_time) VALUES
  (1, 1, 2, 799.99),  -- Two laptops in order 1
  (1, 4, 1, 199.99),  -- One monitor in order 1
  (2, 2, 5, 149.99),  -- Five office chairs in order 2
  (3, 3, 10, 19.99),  -- Ten desk organizers in order 3
  (3, 5, 5, 9.99);    -- Five packs of printer paper in order 3

-- Insert sample data into InventoryReport
INSERT INTO `InventoryReport` (report_date, report_data, user_id) VALUES
  ('2023-10-05', 'Inventory check completed, all stocks updated.', 1),
  ('2023-10-10', 'Low stock alert on Laptop and Office Chair.', 2),
  ('2023-10-15', 'Monthly inventory report.', 3);

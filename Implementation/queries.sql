USE inventory_management;

-- 1. View all products and their details
SELECT * FROM Product;

-- 2. View all suppliers and their contact information
SELECT * FROM Supplier;

-- 3. View all orders, including the supplier and total amount
SELECT 
    `Order`.order_id,
    `Order`.order_date,
    Supplier.supplier_name,
    `Order`.total_amount
FROM 
    `Order`
JOIN 
    Supplier ON `Order`.supplier_id = Supplier.supplier_id;

-- 4. View all order details for a specific order (e.g., order_id = 1)
SELECT 
    OrderDetail.detail_id,
    OrderDetail.order_id,
    Product.product_name,
    OrderDetail.quantity_ordered,
    OrderDetail.price_at_order_time
FROM 
    OrderDetail
JOIN 
    Product ON OrderDetail.product_id = Product.product_id
WHERE 
    OrderDetail.order_id = 1;

-- 5. Find all products with low stock (e.g., quantity_in_stock < 10)
SELECT 
    product_name, 
    quantity_in_stock 
FROM 
    Product
WHERE 
    quantity_in_stock < 10;

-- 6. View all users and their roles
SELECT 
    user_id, 
    username, 
    role 
FROM 
    User;

-- 7. Retrieve the inventory report generated most recently
SELECT 
    report_id, 
    report_date, 
    report_data 
FROM 
    InventoryReport 
ORDER BY 
    report_date DESC 
LIMIT 1;

-- 8. Update the quantity_in_stock of a product (e.g., for product_id = 1)
UPDATE Product
SET quantity_in_stock = quantity_in_stock - 5
WHERE product_id = 1;

-- 9. Delete a specific order (e.g., order_id = 1) and its details
DELETE FROM OrderDetail WHERE order_id = 1;
DELETE FROM `Order` WHERE order_id = 1;

-- 10. View all orders placed by a specific user (e.g., user_id = 1)
SELECT 
    `Order`.order_id,
    `Order`.order_date,
    User.username,
    `Order`.total_amount
FROM 
    `Order`
JOIN 
    User ON `Order`.user_id = User.user_id
WHERE 
    User.user_id = 1;

-- 11. List all products supplied by each supplier
SELECT 
    Supplier.supplier_name,
    Product.product_name,
    Product.price
FROM 
    Product
JOIN 
    Supplier ON Product.supplier_id = Supplier.supplier_id
ORDER BY 
    Supplier.supplier_name;

-- 12. Calculate the total value of products in stock for each category
SELECT 
    category,
    SUM(price * quantity_in_stock) AS total_stock_value
FROM 
    Product
GROUP BY 
    category;

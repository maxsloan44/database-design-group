USE database_design;
CREATE VIEW DetailedOrder AS SELECT Orders.order_id AS `Order ID`,
 quantity_ordered AS `Quantity`, 
 price_at_order_time AS `Price`, 
 product_id AS `Product ID`, 
 supplier_id AS `Supplier ID`, 
 order_date AS `Order Date`, 
 total_amount AS `Total Amount` FROM Orders INNER JOIN OrderDetails ON Orders.order_id=OrderDetails.order_id;
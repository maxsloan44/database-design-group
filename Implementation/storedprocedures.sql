DROP PROCEDURE IF EXISTS get_all_orders;
DROP PROCEDURE IF EXISTS get_all_products;
DROP PROCEDURE IF EXISTS get_all_suppliers;
DROP PROCEDURE IF EXISTS order_from_date;
DROP PROCEDURE IF EXISTS order_from_supp;
DROP PROCEDURE IF EXISTS product_fromcategory;
DROP PROCEDURE IF EXISTS product_fromid;
DROP PROCEDURE IF EXISTS product_fromname;
DROP PROCEDURE IF EXISTS product_fromsupplier;
DROP PROCEDURE IF EXISTS supplier_fromname;
DROP PROCEDURE IF EXISTS supplier_fromno;

DELIMITER //
CREATE PROCEDURE get_all_orders() 
BEGIN
	SELECT * FROM DetailedOrder ORDER BY `Order Date` DESC;
END //

CREATE PROCEDURE order_fromno(order_no INT)
BEGIN
	SELECT * FROM DetailedOrder
    WHERE `Order ID` = order_no;
END //

CREATE PROCEDURE order_fromsupp(supplier INT)
BEGIN
	SELECT * FROM DetailedOrder
	WHERE `Supplier ID` = supplier;
END //

CREATE PROCEDURE order_fromdate(date DATE)
BEGIN
	SELECT * FROM DetailedOrder
    WHERE `Order Date` = date;
END //

CREATE PROCEDURE get_all_suppliers()
BEGIN
	SELECT supplier_id AS `Supplier ID`, supplier_name AS `Supplier Name`, contact_info AS `Contact Info` FROM Suppliers;
END //

CREATE PROCEDURE supplier_fromno(supplier INT)
BEGIN
	SELECT supplier_id AS `Supplier ID`, supplier_name AS `Supplier Name`, contact_info AS `Contact Info` FROM Suppliers
    WHERE `Supplier ID` = supplier;
END //

CREATE PROCEDURE supplier_fromname(supname VARCHAR(255))
BEGIN
	SELECT supplier_id AS `Supplier ID`, supplier_name AS `Supplier Name`, contact_info AS `Contact Info` FROM Suppliers
    WHERE `Supplier Name` LIKE supname;
END //

CREATE PROCEDURE get_all_products()
BEGIN
	SELECT product_id AS `Product ID`, product_name AS `Product Name`, category AS `Category`, price AS `Price`, quantity_in_stock AS `Stock Quantity`, supplier_id AS `Supplier ID` FROM Products;
END //

CREATE PROCEDURE product_fromid(id INT)
BEGIN
	SELECT product_id AS `Product ID`, product_name AS `Product Name`, category AS `Category`, price AS `Price`, quantity_in_stock AS `Stock Quantity`, supplier_id AS `Supplier ID` FROM Products
    WHERE `Product ID` = id;
END //

CREATE PROCEDURE product_fromname(prodname VARCHAR(255))
BEGIN
	SELECT product_id AS `Product ID`, product_name AS `Product Name`, category AS `Category`, price AS `Price`, quantity_in_stock AS `Stock Quantity`, supplier_id AS `Supplier ID` FROM Products
    WHERE `Product Name` LIKE prodname;
END //

CREATE PROCEDURE product_fromcategory(prodcat VARCHAR(255))
BEGIN
	SELECT product_id AS `Product ID`, product_name AS `Product Name`, category AS `Category`, price AS `Price`, quantity_in_stock AS `Stock Quantity`, supplier_id AS `Supplier ID` FROM Products
    WHERE `Category` LIKE prodcat;
END //

CREATE PROCEDURE product_fromsupplier(prodsupp INT)
BEGIN
	SELECT product_id AS `Product ID`, product_name AS `Product Name`, category AS `Category`, price AS `Price`, quantity_in_stock AS `Stock Quantity`, supplier_id AS `Supplier ID` FROM Products
    WHERE `Supplier ID` = prodsupp;
END //
DELIMITER ;
-- Table made by Henry
CREATE TABLE Products (
	product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL,
    quantity_in_stock INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Table made by Henry
CREATE TABLE OrderDetails (
	detail_id INT PRIMARY KEY,
	quantity_ordered INT,
	price_at_order_time DECIMAL,
	FOREIGN KEY (order_id) REFERENCES Orders(order_id),
	FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

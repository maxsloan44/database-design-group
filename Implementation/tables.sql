-- Table made by Max
CREATE TABLE IF NOT EXISTS Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name varchar(255),
    contact_info varchar(255)
);

-- Table made by Max
CREATE TABLE IF NOT EXISTS Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    supplier_id INT,
    total_amount DECIMAL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Table made by Henry
CREATE TABLE IF NOT EXISTS Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL,
    quantity_in_stock INT,
    supplier_id INT,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

-- Table made by Henry
CREATE TABLE IF NOT EXISTS OrderDetails (
     detail_id INT PRIMARY KEY,
     quantity_ordered INT,
     price_at_order_time DECIMAL,
     order_id INT,
     product_id INT,
     FOREIGN KEY (order_id) REFERENCES Orders(order_id),
     FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Table made by Cass
CREATE TABLE IF NOT EXISTS InventoryReport (
	report_id INT PRIMARY KEY,
	report_date DATE,
	report_data varchar(255)
);

-- Table made by Cass
CREATE TABLE IF NOT EXISTS User (
	user_id INT PRIMARY KEY,
	username varchar(255),
	password varchar(255),
	role varchar(255),
	contact_info varchar(255)
);

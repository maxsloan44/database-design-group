-- Table made by Max
CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name varchar(255),
    contact_info varchar(255)
);

-- Table made by Max
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    supplier_id INT,
    total_amount DECIMAL,
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);

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

-- Table made by Cass
CREATE TABLE InventoryReport (
	report_id INT PRIMARY KEY,
	report_date DATE,
	report_data varchar(255)
);

--Table made by Cass
CREATE TABLE User (
	user_id INT PRIMARY KEY,
	username varchar(255),
	password varchar(255),
	role varchar(255),
	contact_info varchar(255)
);

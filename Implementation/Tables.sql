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

CREATE TABLE iventory_Report(
	report_id INT PRIMARY KEY,
	report_date DATE,
	report_data varchar(255)
);
CREATE TABLE User(
	user_id INT PRIMARY KEY,
	username varchar(255),
	password varchar(255),
	role varchar(255),
	contact_info varchar(255)
);
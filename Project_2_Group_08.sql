--define table for categories
CREATE TABLE Category ( 
	category_id VARCHAR(20) PRIMARY KEY,
	category VARCHAR(50) NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM Category;

--defining table for Subcategory
CREATE TABLE Subcategory (
	subcategory_id VARCHAR(20) PRIMARY KEY, 
	subcategory VARCHAR(50) NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM Subcategory;

--defining table for employees
CREATE TABLE Contacts (
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR(100) NOT NULL
);
--printing to check that csv imported correct
SELECT * FROM employees;

--defining table for department employees 
CREATE TABLE Campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
	company_name VARCHAR (100) NOT NULL,
    description VARCHAR (100) NOT NULL,
	goal FLOAT NOT NULL, 
	pledged FLOAT,
	outcome VARCHAR(20)NOT NULL,
	backers_count INT,
	country VARCHAR(10) NOT NULL,
	currency VARCHAR(10)NOT NULL,
	launch_date TIMESTAMP NOT NULL,
	end_date TIMESTAMP,
	category_id VARCHAR(20) NOT NULL,
	subcategory_id VARCHAR(20)NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES Contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES Category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES Subcategory(subcategory_id)
);
--printing to check that csv imported correct
SELECT * FROM Campaign;


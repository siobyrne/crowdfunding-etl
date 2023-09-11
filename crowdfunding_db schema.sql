-- Create contacts table

CREATE TABLE IF NOT EXISTS contacts (
	contact_id INT,
	first_name VARCHAR,
	last_name VARCHAR,
	email VARCHAR,
	PRIMARY KEY (contact_id)
);

-- Create category table

CREATE TABLE IF NOT EXISTS category (
	category_id VARCHAR,
	category VARCHAR,
	PRIMARY KEY (category_id)
);

-- Create subcategory table

CREATE TABLE IF NOT EXISTS subcategory (
	subcategory_id VARCHAR,
	subcategory VARCHAR,
	PRIMARY KEY (subcategory_id)
);

-- Create campaign table

CREATE TABLE IF NOT EXISTS campaign (
	cf_id INT,
	contact_id INT,
	company_name VARCHAR,
	info VARCHAR,
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR,
	backers_count INT,
	country VARCHAR,
	currency VARCHAR,
	launched_time DATE,
	final_date DATE,
	category_id VARCHAR,                    
	subcategory_id VARCHAR,                 
	FOREIGN KEY(category_id) REFERENCES category (category_id),
	FOREIGN KEY(subcategory_id) REFERENCES subcategory (subcategory_id),
	FOREIGN KEY(contact_id) REFERENCES contacts (contact_id),
	PRIMARY KEY (cf_id)
);

select * from contacts;

select * from category;

select * from subcategory;

Select * from campaign;
# crowdfunding-etl
# Project 2

In this project, we use Python, Pandas, and either Python dictionary methods or regular expressions to extract and transform the crowdfunding.xlsx data.

# Project Tasks and Findings

1.	Creating Category and Subcategory DataFrames

The crowdfunding.xlsx excel data is extracted and transformed to create a category DataFrame that has the following columns:
•	A "category_id" column that has entries going sequentially from "cat1" to "catn", where n is the number of unique categories
•	A "category" column that contains only the category titles
•	The category DataFrame is exported and saved as category.csv

The crowdfunding.xlsx excel data is extracted and transformed to create a subcategory DataFrame that has the following columns:
•	A "subcategory_id" column that has entries going sequentially from "subcat1" to "subcatn", where n is the number of unique subcategories
•	A "subcategory" column that contains only the subcategory titles
•	The subcategory DataFrame is exported and saved as subcategory.csv

2.	Creating Campaign DataFrame

The crowdfunding.xlsx excel data is extracted and transformed to create a campaign DataFrame has the following columns:
•	The "cf_id" column
•	The "contact_id" column
•	The "company_name" column
•	The "blurb" column, renamed to "info"
•	The "goal" column, converted to the float data type
•	The "pledged" column, converted to the float data type
•	The "outcome" column
•	The "backers_count" column
•	The "country" column
•	The "currency" column
•	The "launched_at" column, renamed to "launch_time" and with the UTC times converted to the datetime format
•	The "deadline" column, renamed to "final_date" and with the UTC times converted to the datetime format
•	The "category_id" column, with unique identification numbers matching those in the "category_id" column of the category DataFrame
•	The "subcategory_id" column, with the unique identification numbers matching those in the "subcategory_id" column of the subcategory DataFrame
•	The campaign DataFrame is exported and saved as campaign.csv 

3.	Creating Contacts DataFrame

The contacts.xlsx excel data is extracted and transformed using Option 1 i.e., Python dictionary methods as follows:
o	The contacts.xlsx file is imported into a DataFrame.
o	We converted each row to a dictionary by iterating through the DataFrame, 
o	We iterated through each dictionary, doing the following:
	Extracted the dictionary values from the keys by using a Python list comprehension.
	Added the values for each row to a new list.
o	Create a new DataFrame that contains the extracted data.
o	Split each "name" column value into a first and last name, and place each in a new column.
o	Cleaned, exported, and saved the DataFrame contacts.csv


4.	Creating Crowdfunding Database

•	ERD of the four csv tables is sketched using QuickDBD ( https://www.quickdatabasediagrams.com/ )
•	We used the information from the ERD to create a table schema for each CSV file.
•	The data types, primary keys, foreign keys, and other constraints are specified.
•	The database schema is saved as a Postgres file named crowdfunding_db_schema.sql

Tasks and Findings
•	A new Postgres database, named crowdfunding_db is created
•	Using the database schema, we created the tables in the correct order to handle the foreign keys.
•	We verified the table creation by running a SELECT statement for each table.
•	We imported each CSV file into its corresponding SQL table.
•	We verified that each table has the correct data by running a SELECT statement for each table.

# Reference
•	Resources folder contains the data files (the original starter crowdfunding and contacts excel files and the four generated csv files – campaign, category, subcategory, contacts)
•	ETL_Mini_Project_SByrne_YFisseha.ipynb contains the data extraction and transformation codes
•	crowdfunding_db_diagram is the ERD sketch for the four csv files
•	crowdfunding_db_schema contains the correct importing of the four csv files in SQL table
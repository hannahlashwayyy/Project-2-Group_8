# Crowdfunding ETL Mini Project

## Overview

This project focuses on building an ETL (Extract, Transform, Load) pipeline using Python, Pandas, and either Python dictionary methods or regular expressions. The goal is to extract and transform data from Excel files, create multiple CSV files, and then load these into a PostgreSQL database.

## What is ETL?

ETL stands for Extract, Transform, Load. It is a data integration process that involves the following steps:

- **Extract**: Collect data from various sources such as logs, databases, flat files, web pages, and emails.
- **Transform**: Convert the extracted data into a suitable format for analysis, which may involve data cleaning, normalization, and aggregation.
- **Load**: Load the transformed data into a final destination like a SQL database, data warehouse, or data lake.

<p>&nbsp;</p>

![ETL Process](https://s7280.pcdn.co/wp-content/uploads/2021/12/ETL-Pipeline-Extract-transform-load-basics.png)

## Project Description

In this mini project, we will develop an ETL pipeline that integrates data from multiple sources and loads it into a centralized data warehouse. The project includes:

1. **Data Extraction**: Extracting data from Excel files.
2. **Data Transformation**: Cleaning, transforming, and normalizing the data.
3. **Data Loading**: Loading the transformed data into a PostgreSQL database.

### Data Sources

- `crowdfunding.xlsx`
- `contacts.xlsx`

### Data Destination

- PostgreSQL database (`crowdfunding_db`)

## Project Deliverables

### 1. Category and Subcategory DataFrames

- **Category DataFrame**: Contains a `category_id` column with entries from "cat1" to "catn" and a `category` column with category titles.
  - Export as `category.csv`.
  
- **Subcategory DataFrame**: Contains a `subcategory_id` column with entries from "subcat1" to "subcatn" and a `subcategory` column with subcategory titles.
  - Export as `subcategory.csv`.

### 2. Campaign DataFrame

- Extract and transform data to create a DataFrame with columns: `cf_id`, `contact_id`, `company_name`, `description`, `goal`, `pledged`, `outcome`, `backers_count`, `country`, `currency`, `launch_date`, `end_date`, `category_id`, `subcategory_id`.
  - Export as `campaign.csv`.

### 3. Contacts DataFrame

- Extract and transform data from `contacts.xlsx` using either Python dictionary methods or regular expressions.
- Create a DataFrame with columns: `contact_id`, `first_name`, `last_name`, `email`.
  - Export as `contacts.csv`.

### 4. Crowdfunding Database

- Create an ERD and table schema for the CSV files.
- Create a PostgreSQL database (`crowdfunding_db`) and import the CSV data into appropriate tables.
- Verify data with `SELECT` statements.



## Contributors

- [Seven G.](https://github.com/DenverEro)
- [Hannah L.](https://github.com/partnerusername)
- [Sabina K.](https://github.com/Sabinak00)

## License

This project is licensed under the GNU General Public License v3.0 - see the [LICENSE.md](LICENSE.md) file for details.

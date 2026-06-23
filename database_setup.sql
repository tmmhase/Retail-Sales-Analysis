-- Retail Sales Analysis SQL Project
-- Step 1: Create database and table structure

CREATE DATABASE p1_retail_db;

-- After creating the database, connect to p1_retail_db before running the table creation query.

DROP TABLE IF EXISTS retail_sales;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale_date DATE,
    sale_time TIME,
    customer_id INT,
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit NUMERIC(10,2),
    cogs NUMERIC(10,2),
    total_sale NUMERIC(10,2)
);
-- Data Cleaning & Validation

-- Total number of records
SELECT COUNT(*) AS total_records
FROM retail_sales;

-- Number of unique customers
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_sales;

-- Product categories available
SELECT DISTINCT category
FROM retail_sales;

-- Check for missing values
SELECT *
FROM retail_sales
WHERE
    sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;

-- Remove rows containing missing values
DELETE FROM retail_sales
WHERE
    sale_date IS NULL
    OR sale_time IS NULL
    OR customer_id IS NULL
    OR gender IS NULL
    OR age IS NULL
    OR category IS NULL
    OR quantity IS NULL
    OR price_per_unit IS NULL
    OR cogs IS NULL
    OR total_sale IS NULL;
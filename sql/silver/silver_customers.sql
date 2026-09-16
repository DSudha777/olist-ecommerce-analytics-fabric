CREATE OR REPLACE TABLE silver_customers
USING DELTA
AS
SELECT
    TRIM(customer_id) AS customer_id,
    TRIM(customer_unique_id) AS customer_unique_id,
    CAST(customer_zip_code_prefix AS INT) AS customer_zip_code_prefix,
    TRIM(customer_city) AS customer_city,
    UPPER(TRIM(customer_state)) AS customer_state

FROM bronze_customers;

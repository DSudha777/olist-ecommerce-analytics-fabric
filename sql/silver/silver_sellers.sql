CREATE OR REPLACE TABLE silver_sellers
USING DELTA
AS
SELECT
    TRIM(seller_id) AS seller_id,
    CAST(seller_zip_code_prefix AS INT) AS seller_zip_code_prefix,
    TRIM(seller_city) AS seller_city,
    UPPER(TRIM(seller_state)) AS seller_state

FROM bronze_sellers;

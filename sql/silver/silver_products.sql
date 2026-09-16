CREATE OR REPLACE TABLE silver_products
USING DELTA
AS
SELECT
    TRIM(product_id) AS product_id,
    TRIM(product_category_name) AS product_category_name,

    CAST(product_name_lenght AS INT) AS product_name_length,
    CAST(product_description_lenght AS INT) AS product_description_length,
    CAST(product_photos_qty AS INT) AS product_photos_qty,

    CAST(product_weight_g AS DECIMAL(12,2)) AS product_weight_g,
    CAST(product_length_cm AS DECIMAL(12,2)) AS product_length_cm,
    CAST(product_height_cm AS DECIMAL(12,2)) AS product_height_cm,
    CAST(product_width_cm AS DECIMAL(12,2)) AS product_width_cm

FROM bronze_products;


CREATE TABLE dbo.dim_product
AS
SELECT
    product_id,
    product_category_name,
    product_weight_g,
    product_length_cm,
    product_height_cm,
    product_width_cm
FROM Olist_Lakehouse.dbo.dim_product;

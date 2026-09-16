CREATE TABLE dbo.dim_seller
AS
SELECT
    seller_id,
    seller_zip_code_prefix,
    seller_city,
    seller_state
FROM Olist_Lakehouse.dbo.dim_seller;

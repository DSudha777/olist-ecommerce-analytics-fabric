CREATE TABLE dbo.dim_customer
AS
SELECT
    customer_unique_id,
    customer_city,
    customer_state,
    customer_zip_code_prefix
FROM Olist_Lakehouse.dbo.dim_customer;

CREATE OR REPLACE TABLE silver_payments
USING DELTA
AS
SELECT
    TRIM(order_id) AS order_id,
    CAST(payment_sequential AS INT) AS payment_sequential,
    TRIM(payment_type) AS payment_type,
    CAST(payment_installments AS INT) AS payment_installments,
    CAST(payment_value AS DECIMAL(12,2)) AS payment_value

FROM bronze_payments;

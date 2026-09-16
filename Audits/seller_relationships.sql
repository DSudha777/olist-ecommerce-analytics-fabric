%%sql

SELECT COUNT(*) AS orphan_sellers
FROM fact_order_items f
LEFT JOIN dim_seller s
    ON f.seller_id = s.seller_id
WHERE s.seller_id IS NULL;



SELECT COUNT(*) AS orphan_products
FROM fact_order_items f
LEFT JOIN dim_product p
    ON f.product_id = p.product_id
WHERE p.product_id IS NULL;

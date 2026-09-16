--We want: orphan_order_items = 0
--This is a referential-integrity check.

SELECT COUNT(*) AS orphan_order_items
FROM fact_order_items f
LEFT JOIN fact_orders o
    ON f.order_id = o.order_id
WHERE o.order_id IS NULL;

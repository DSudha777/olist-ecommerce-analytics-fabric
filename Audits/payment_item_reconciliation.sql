%%sql

WITH item_totals AS (
    SELECT
        order_id,
        SUM(total_item_value) AS item_total
    FROM fact_order_items
    GROUP BY order_id
),
payment_totals AS (
    SELECT
        order_id,
        SUM(payment_value) AS payment_total
    FROM fact_payments
    GROUP BY order_id
)

SELECT
    p.order_id,
    ROUND(i.item_total, 2) AS item_total,
    ROUND(p.payment_total, 2) AS payment_total,
    ROUND(p.payment_total - i.item_total, 2) AS difference
FROM payment_totals p
INNER JOIN item_totals i
    ON p.order_id = i.order_id
WHERE ABS(p.payment_total - i.item_total) > 1
ORDER BY ABS(p.payment_total - i.item_total) DESC
LIMIT 20;

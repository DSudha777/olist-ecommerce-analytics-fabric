CREATE OR REPLACE TABLE silver_reviews
USING DELTA
AS
SELECT
    TRIM(review_id) AS review_id,
    TRIM(order_id) AS order_id,
    CAST(review_score AS INT) AS review_score,
    TRIM(review_comment_title) AS review_comment_title,
    TRIM(review_comment_message) AS review_comment_message,
    CAST(review_creation_date AS TIMESTAMP) AS review_creation_date,
    CAST(review_answer_timestamp AS TIMESTAMP) AS review_answer_timestamp

FROM bronze_reviews;

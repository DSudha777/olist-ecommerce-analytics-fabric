CREATE TABLE dbo.dim_date
AS
SELECT
    date_key,
    date,
    year,
    quarter,
    month,
    month_name,
    month_short,
    day,
    day_of_week,
    day_name,
    is_weekend
FROM Olist_Lakehouse.dbo.dim_date;

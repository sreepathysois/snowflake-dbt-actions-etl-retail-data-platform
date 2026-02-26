USE ROLE ACCOUNTADMIN;
USE WAREHOUSE wh_bi;
USE DATABASE retail_prod;

CREATE OR REPLACE SCHEMA bi;
USE SCHEMA bi;

CREATE OR REPLACE VIEW revenue_trend AS
SELECT
    DATE(transaction_ts) AS sale_date,
    SUM(total_amount) AS daily_revenue
FROM retail_prod.public_silver.transactions_clean
GROUP BY DATE(transaction_ts)
ORDER BY sale_date;

USE ROLE ACCOUNTADMIN;
USE WAREHOUSE wh_bi;
USE DATABASE retail_prod;

CREATE OR REPLACE SCHEMA bi;
USE SCHEMA bi;

CREATE OR REPLACE VIEW customer_contribution AS
SELECT
    customer_id,
    SUM(total_amount) AS total_spent,
    COUNT(transaction_id) AS total_transactions
FROM retail_prod.public_silver.transactions_clean
GROUP BY customer_id
ORDER BY total_spent DESC;

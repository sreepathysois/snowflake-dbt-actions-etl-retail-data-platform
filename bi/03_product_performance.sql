USE WAREHOUSE wh_bi;
USE DATABASE retail_prod;
USE SCHEMA bi;

CREATE OR REPLACE VIEW product_performance AS
SELECT
    product,
    total_sales,
    total_quantity
FROM retail_prod.gold.sales_summary
ORDER BY total_sales DESC;

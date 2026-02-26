USE WAREHOUSE wh_bi;
USE DATABASE retail_prod;
USE SCHEMA bi;

CREATE OR REPLACE VIEW kpi_summary AS
SELECT
    SUM(total_sales) AS total_revenue,
    SUM(total_quantity) AS total_units_sold
FROM retail_prod.public_gold.sales_summary;

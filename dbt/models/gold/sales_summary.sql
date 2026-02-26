SELECT
    product,
    SUM(quantity * price) AS total_sales,
    SUM(quantity) AS total_quantity
FROM {{ ref('transactions_clean') }}
GROUP BY product

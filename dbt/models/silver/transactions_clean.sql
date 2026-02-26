SELECT
    transaction_id,
    customer_id,
    product,
    quantity,
    price,
    quantity * price AS total_amount,
    TO_TIMESTAMP(transaction_ts) AS transaction_ts
FROM retail_prod.bronze.transactions_raw

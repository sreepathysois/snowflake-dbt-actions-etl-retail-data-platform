USE DATABASE retail_prod;
USE SCHEMA bronze;

CREATE OR REPLACE TABLE transactions_raw (
  transaction_id INT,
  customer_id INT,
  product STRING,
  quantity INT,
  price NUMBER,
  transaction_ts STRING
);

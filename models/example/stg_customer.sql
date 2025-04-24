-- models/stg_customers.sql

WITH renamed_columns AS (
   SELECT
      customer_id,
      CONCAT(first_name, ' ', last_name) AS customer_name,
      email AS email_address,
      address AS billing_address
   FROM {{ source('raw', 'customer') }}
)

SELECT *
FROM renamed_columns

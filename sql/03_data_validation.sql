SELECT COUNT(*)
FROM staging.customers;

SELECT *
FROM staging.customers
LIMIT 10;


SELECT COUNT(*) AS total_customers
FROM staging.customers;


SELECT COUNT(*) AS total_sellers
FROM staging.sellers;


SELECT COUNT(*) AS total_orders
FROM staging.orders;



SELECT
    ordinal_position,
    column_name,
    data_type
FROM information_schema.columns
WHERE table_schema = 'staging'
  AND table_name = 'order_reviews'
ORDER BY ordinal_position;


COPY staging.customers
FROM 'C:\Users\...\olist_customers_dataset.csv'
WITH (
    FORMAT csv,
    HEADER true,
    DELIMITER ',',
    QUOTE '"',
    ESCAPE '"'
);

COPY staging.customers
FROM 'C:\Users\linka\OneDrive\Documents\GitHub\Olist_Project\data\raw\olist_customers_dataset.csv'
WITH (
    FORMAT csv,
    HEADER true
);




SELECT
column_name,
data_type,
character_maximum_length
FROM information_schema.columns
WHERE table_schema='staging'
AND table_name='order_reviews';
-- ==========================================
-- 04_load_staging.sql
-- Load CSV files into staging tables
-- ==========================================


COPY staging.customers
FROM 'C:\path\to\olist_customers_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.orders
FROM 'C:\path\to\olist_orders_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.order_items
FROM 'C:\path\to\olist_order_items_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.order_payments
FROM 'C:\path\to\olist_order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.order_reviews
FROM 'C:\path\to\olist_order_reviews_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.products
FROM 'C:\path\to\olist_products_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.sellers
FROM 'C:\path\to\olist_sellers_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.geolocation
FROM 'C:\path\to\olist_geolocation_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.product_category_name_translation
FROM 'C:\path\to\product_category_name_translation.csv'
DELIMITER ','
CSV HEADER;


COPY staging.marketing_qualified_leads
FROM 'C:\path\to\olist_marketing_qualified_leads_dataset.csv'
DELIMITER ','
CSV HEADER;


COPY staging.closed_deals
FROM 'C:\path\to\olist_closed_deals_dataset.csv'
DELIMITER ','
CSV HEADER;
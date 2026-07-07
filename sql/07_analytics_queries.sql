-- ==========================================
-- 07_analytics_queries.sql
-- Business Analytics Queries
-- ==========================================

SELECT
    ROUND(SUM(payment_value), 2) AS total_revenue
FROM analytics.fact_payments;


SELECT COUNT(*) AS total_orders
FROM analytics.fact_orders;


SELECT COUNT(*) AS total_customers
FROM analytics.dim_customers;


SELECT
    ROUND(AVG(payment_value), 2) AS average_order_value
FROM analytics.fact_payments;


SELECT
    ROUND(AVG(review_score), 2) AS average_review_score
FROM analytics.fact_reviews;


SELECT
    payment_type,
    ROUND(SUM(payment_value), 2) AS revenue
FROM analytics.fact_payments
GROUP BY payment_type
ORDER BY revenue DESC;


SELECT
    c.customer_state,
    COUNT(o.order_id) AS total_orders
FROM analytics.fact_orders o
JOIN analytics.dim_customers c
ON o.customer_id = c.customer_id
GROUP BY c.customer_state
ORDER BY total_orders DESC
LIMIT 10;


SELECT
    DATE_TRUNC('month', order_purchase_timestamp) AS month,
    COUNT(order_id) AS total_orders
FROM analytics.fact_orders
GROUP BY month
ORDER BY month;


SELECT
    DATE_TRUNC('month', o.order_purchase_timestamp) AS month,
    ROUND(SUM(p.payment_value),2) AS revenue
FROM analytics.fact_orders o
JOIN analytics.fact_payments p
ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;


SELECT
    COALESCE(ct.product_category_name_english,'Unknown') AS category,
    ROUND(SUM(oi.price),2) AS revenue
FROM analytics.fact_order_items oi
JOIN analytics.dim_products pr
ON oi.product_id = pr.product_id
LEFT JOIN analytics.dim_category_translation ct
ON pr.product_category_name = ct.product_category_name
GROUP BY category
ORDER BY revenue DESC
LIMIT 10;


SELECT
    s.seller_id,
    ROUND(SUM(oi.price),2) AS revenue
FROM analytics.fact_order_items oi
JOIN analytics.dim_sellers s
ON oi.seller_id = s.seller_id
GROUP BY s.seller_id
ORDER BY revenue DESC
LIMIT 10;


SELECT
    ROUND(
        AVG(
            EXTRACT(EPOCH FROM (
                order_delivered_customer_date
                - order_purchase_timestamp
            )) / 86400
        ),
        2
    ) AS avg_delivery_days
FROM analytics.fact_orders
WHERE order_delivered_customer_date IS NOT NULL;


SELECT
    order_status,
    COUNT(*) AS orders
FROM analytics.fact_orders
GROUP BY order_status
ORDER BY orders DESC;


    review_score,
    COUNT(*) AS reviews
FROM analytics.fact_reviews
GROUP BY review_score
ORDER BY review_score DESC;

SELECT
    customer_city,
    COUNT(*) AS customers
FROM analytics.dim_customers
GROUP BY customer_city
ORDER BY customers DESC
LIMIT 10;
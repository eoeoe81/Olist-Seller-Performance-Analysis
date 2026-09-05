WITH seller_first_order AS (
    SELECT 
        oi.seller_id,
        MIN(
            substr(o.order_purchase_timestamp, 7, 4) || '-' || 
            substr(o.order_purchase_timestamp, 4, 2)
        ) AS cohort_month
    FROM order_items oi
    JOIN orders o 
        ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY oi.seller_id
), 

seller_activity AS (
    SELECT 
        oi.seller_id,
        substr(o.order_purchase_timestamp, 7, 4) || '-' || 
        substr(o.order_purchase_timestamp, 4, 2) AS activity_month
    FROM order_items oi
    JOIN orders o 
        ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY 
        oi.seller_id,
        substr(o.order_purchase_timestamp, 7, 4) || '-' || 
        substr(o.order_purchase_timestamp, 4, 2)
)

SELECT 
    f.cohort_month,
    a.activity_month,
    COUNT(DISTINCT a.seller_id) AS active_sellers
FROM seller_first_order f
JOIN seller_activity a 
    ON f.seller_id = a.seller_id
GROUP BY 
    f.cohort_month,
    a.activity_month
ORDER BY 
    f.cohort_month,
    a.activity_month;
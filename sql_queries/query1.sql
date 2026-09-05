SELECT 
    s.seller_id,
    s.seller_state,
    s.seller_city,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(oi.price)              AS total_revenue,
    AVG(oi.price)              AS avg_order_value
FROM sellers s
JOIN order_items oi 
    ON s.seller_id = oi.seller_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_status = 'delivered'
GROUP BY 
    s.seller_id,
    s.seller_state,
    s.seller_city
ORDER BY total_revenue DESC;
SELECT 
    seller_id,
    seller_state,
    total_revenue,
    total_orders,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank,
    RANK() OVER (ORDER BY total_orders DESC) AS order_rank,
    ROUND(total_revenue / SUM(total_revenue) OVER () * 100, 2) AS revenue_pct
FROM (
    SELECT 
        s.seller_id,
        s.seller_state,
        SUM(oi.price) AS total_revenue,
        COUNT(DISTINCT o.order_id) AS total_orders
    FROM sellers s
    JOIN order_items oi ON s.seller_id = oi.seller_id
    JOIN orders o ON oi.order_id = o.order_id
    WHERE o.order_status = 'delivered'
    GROUP BY s.seller_id, s.seller_state
) base;
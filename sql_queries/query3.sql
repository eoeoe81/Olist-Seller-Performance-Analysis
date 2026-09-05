WITH seller_stats AS (
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
),
ranked AS (
    SELECT *,
        RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank,
        NTILE(4) OVER (ORDER BY total_revenue DESC) AS revenue_quartile
    FROM seller_stats
)
SELECT *,
    CASE revenue_quartile
        WHEN 1 THEN 'Top Tier'
        WHEN 2 THEN 'Mid Tier'
        WHEN 3 THEN 'Low Tier'
        ELSE 'Inactive'
    END AS seller_segment
FROM ranked
ORDER BY revenue_rank;
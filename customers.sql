SELECT
    C.name AS customer_name,
    C.customer_id,
    COUNT(O.order_id) AS total_orders
FROM
    Customers AS C
LEFT JOIN
    Orders AS O
ON
    C.customer_id = O.customer_id
GROUP BY
    C.customer_id, C.name
ORDER BY
    total_orders DESC;

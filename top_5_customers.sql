SELECT
    C.name AS customer_name,
    C.customer_id,
    SUM(OI.quantity * OI.unit_price) AS total_purchase_amount
FROM
    Customers AS C
LEFT JOIN
    Orders AS O
ON
    C.customer_id = O.customer_id
LEFT JOIN
    Order_Items AS OI
ON
    O.order_id = OI.order_id
GROUP BY
    C.customer_id, C.name
ORDER BY
    total_purchase_amount DESC
LIMIT 5;

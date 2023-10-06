select orders.status, orders.comments, customers.country
FROM orders
JOIN customers ON orders.customernumber = customers.customernumber
WHERE orders.status = "cancelled";

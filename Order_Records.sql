--Total number of orders recorded between 2003 and 2005.
SELECT YEAR(orders.orderDate) AS Year, SUM(orderdetails.quantityOrdered) AS Total_orders
FROM orders 
JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
GROUP BY YEAR(orders.orderDate);

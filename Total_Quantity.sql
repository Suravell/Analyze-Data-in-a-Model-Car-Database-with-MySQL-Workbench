--Total amount of quantity ordered with dates.
SELECT orders.orderdate, sum(orderdetails.quantityOrdered)
FROM orders
JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
group by orderdate;

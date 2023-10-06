-- Total quantity ordered per warehouses
SELECT products.warehousecode, SUM(orderdetails.quantityordered)
FROM products
JOIN orderdetails ON products.productcode = orderdetails.productcode
GROUP BY products.warehousecode; 

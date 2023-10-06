SELECT productname, COUNT(*)
FROM Products 
WHERE  Productcode NOT IN (SELECT Productcode FROM OrderDetails WHERE QuantityOrdered > 0)
GROUP BY productname;

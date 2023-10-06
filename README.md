# Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench

# The Project Scenario

Mint Classics Company, a retailer of classic model cars and other vehicles, is looking at closing one of their storage facilities. To support a data-based business decision, they are looking for suggestions and recommendations for reorganizing or reducing inventory, while still maintaining timely service to their customers.

# Questions
1.  Where are items stored and if they were rearranged, could a warehouse be eliminated?
2. How are inventory numbers related to sales figures? Do the inventory counts seem appropriate for each item?
3. Are we storing items that are not moving? Are any items candidates for being dropped from the product line?
4. What kind of products are stored in each warehouses? And which warehouse get more orders and why?
5. Does price have major impact on the products in order to get ordered?
6. Which country has the highest number of orders?

# Skills demonstrated
•	By using MySQL Workbench we import data from an existing database.
•	Familiarize our self with the EER (Extended Entity-Relationship) diagram that models the structure of the Mint Classics database
•	Start analyzing the data by using SQL statements such as SELECT, WHERE, ORDER BY, GROUP BY, JOIN and executing these statements against our database.
•	Determine important factors that may influence inventory reorganization/reduction.
•	Provide analytic insights and data-driven recommendations.

# Tools used
MySQL Workbench, SQL queries, Mintclassics database file.

# Insights and Suggestions

1.	Throughout the warehouses the warehouses code B has the highest order (35,582) and D has the lowest order (22,351)

SELECT products.warehousecode, SUM(orderdetails.quantityordered)
FROM products
JOIN orderdetails ON products.productcode = orderdetails.productcode
GROUP BY products.warehousecode;


•	Total amount of productlines per warehousecode

SELECT warehousecode, count(productline)
from products
group by warehousecode;
 
2.	From the period of 2003 - 2005 how many products has been Shipped, cancelled, disputed, on hold, resolved, in process? From the result below 303 products has been shipped.

SELECT status, COUNT(status) AS total_of_shipped
FROM orders
WHERE status = "Shipped"
OR status = "cancelled"
OR status = "disputed"
OR status = "on hold"
OR status = "resolved"
OR status = "in process"
group by status;
 
•	As we can see above there are 6 client that cancelled their orders, with one lack of documentation in the warehouse.
select orders.status, orders.comments, customers.country
FROM orders
JOIN customers ON orders.customernumber = customers.customernumber
WHERE orders.status = "cancelled";
 
3.	Total amount of quantity ordered from 2003-01-06 to 2005-05-31.
   
SELECT orders.orderdate, sum(orderdetails.quantityOrdered)
FROM orders
JOIN orderdetails 
ON orders.orderNumber = orderdetails.orderNumber
group by orderdate;
   
•	About 36,439 orders has been recorded in 2003 and after two years in 2005 the number of orders has been decline almost by half.

SELECT YEAR(orders.orderDate) AS Year, SUM(orderdetails.quantityOrdered) AS Total_orders
FROM orders 
JOIN orderdetails ON orders.orderNumber= orderdetails.orderNumber 
GROUP BY YEAR(orders.orderDate);
 
4.	USA got the highest number of orders followed by France and Spain. Switzerland, Hong Kong and Ireland got the lowest number of orders.

SELECT country, count(country) AS count
FROM orders
JOIN  customers ON orders.customernumber = customers.customernumber
group by country
order by count desc;
 
6.	Types of product line in each warehouses.
   
SELECT warehousecode, productline
from products
WHERE warehousecode = "a";
SELECT warehousecode, productline
from products
WHERE warehousecode = "B";
              SELECT warehousecode, productline
              from products
              WHERE warehousecode = "c";
              SELECT warehousecode, productline
              from products
              WHERE warehousecode = "d";
       
7.	The productLine (Classic Cars) got the highest number of sales(1010) and ProductLine(Trains) got the lowest number of sales(81).

select products.productLine, count(orderdetails.productCode) as no_of_sales
from products 
join orderdetails 
on products.productCode = orderdetails.productCode
group by products.productLine
order by no_of_sales desc;
 
8.	Price has major impact on the quantity ordered. As we can see from the data there is high quantity ordered when the price is cheap and small quantity ordered when the price is expensive.

SELECT quantityordered, priceEach from orderdetails;
 
8.	We have found one item in storage that is not moving with a product name (1985 Toyota Supra) and with further investigation the reason behind might be an error with the data entry.

SELECT productname, COUNT(*)
FROM Products 
WHERE  Productcode NOT IN (SELECT Productcode FROM OrderDetails WHERE QuantityOrdered > 0)
GROUP BY productname;
 
# Summary
The goal is to perform exploratory data analysis on Mint Classics Company’s Database to create inventory-related business decisions that lead to the closure of a storage facility by using SQL statements. 

# Solution
From our research there is less demand for the products that are stored in the warehouse D.  Taking into consideration that we have to close down one of the storage facility, we can distribute the products from warehouse D to the other warehouses evenly because we want to maintain timely service to our customers throughout different countries. This will enable us to optimize our space utilization and ensure smooth closure of the storage area.

# Approach
Between 2003 and 2005, 303 orders were shipped, but due to lack of documentation in the warehouse and other reasons, some clients cancelled their orders. In 2003 36,439 orders were recorded but after two years it declined by half. The Classic Cars product line received the highest number of orders, while the Trains product line received the least number of orders so warehouses A, B, and C are the primary shipping hubs, while warehouses D serve as additional storage locations for inventory.

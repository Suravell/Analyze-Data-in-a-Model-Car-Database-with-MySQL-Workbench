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

1.	Throughout the warehouses the warehouses code B has the [highest](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/755fc1c7f3d5abbef1cef8084e4ba851a052d460/Perwarehouseordered.sql) order (35,582) and D has the lowest order (22,351)

![1](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/82fc9ded-f195-4619-8c3b-bd51683d33f3)


•	Total amount of [productlines](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/f2823f1c9db1fc07865faef7a28c81f3a980e4a3/productline_per_warehouse.sql) per warehousecode


   ![2](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/7fde3f03-4a31-433e-8954-2c86e70a829f)
                             

 
2.	From the period of 2003 - 2005 how many products has been [Shipped](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/0b47c42ecee00f3ee9d5272018d5d6627459dbe9/Order_Status.sql), cancelled, disputed, on hold, resolved, in process? From the result below 303 products has been shipped.


![3](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/b10b1a6a-617a-4c40-a7c0-00f07867892f)

 
•	As we can see above there are 6 client that [cancelled](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/b7a65d6f03cac6200f494251ba2d420146560ad6/cancellation_reason.sql) their orders, with one lack of documentation in the warehouse.

![4](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/4df7f3ea-cd44-4c77-94d1-75b8a5fc98c1)
 
3.	Total amount of [quantity](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/c14954aa4b783a5a0b2a9ebe8d270623f75b15f5/Total_Quantity.sql) ordered from 2003-01-06 to 2005-05-31.


![5](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/18e79e2a-6186-4849-b79d-3b41eccb1a74)

![6](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/bd6f8284-3228-43ec-aee0-51f954aa9045)

   
•	About 36,439 orders has been [recorded](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/476a3f7c417e0543c428451d7461931b91f84967/Order_Records.sql) in 2003 and after two years in 2005 the number of orders has been decline almost by half.


![7](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/b5f26fe3-6ab3-476e-8468-1ce9a802d4dc)


 
4.	USA got the [highest](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/32c0326d00b9cc981d74fda907a53be0593762af/Country_Total_Orders.sql) number of orders followed by France and Spain. Switzerland, Hong Kong and Ireland got the lowest number of orders.


![8](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/cf5b2c67-ba09-4021-afae-0ae11440d5fa)

 
6.	[Types](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/9e095b101aac7605f42a60bca3fc375ee5e7f4b6/Product_Line_Types.sql) of product line in each warehouses.
   

![9](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/73200cf8-f25b-49cd-975a-8d463baac048)

![10](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/07a120ef-fc15-406a-84bc-2d0341eae044)

![11](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/d2a2eeac-c488-432d-9ca5-864ff5c86519)

![12](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/48cd97ee-76ea-445c-bf92-a9defb0ec54e)
       
7.	The productLine (Classic Cars) got the [highest](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/c5a8960201facd2c3357b45cb916b8a6b098371f/Product_Line_Highest_Sale.sql) number of sales(1010) and ProductLine(Trains) got the lowest number of sales(81).

![13](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/ee49c427-dfee-4629-9aca-6325e234b3d2)

 
8.	Price has major impact on the [quantity](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/af59adbcb4ce46443c125e95a7fd8be5b1bfc85c/Price_of_Total_Quantity_Ordered.sql) ordered. As we can see from the data there is high quantity ordered when the price is cheap and small quantity ordered when the price is expensive.

![14](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/3380fcbc-3c07-4c2b-8b58-600f3e67716c)
 
8.	We have found one item in storage that is not [moving](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/blob/616de5d5225914e49190120ecb6ef4cf6cbef007/Not_Moving_Products.sql) with a product name (1985 Toyota Supra) and with further investigation the reason behind might be an error with the data entry.

 ![15](https://github.com/Suravell/Analyze-Data-in-a-Model-Car-Database-with-MySQL-Workbench/assets/93171067/540e2dc4-655d-41c7-aa22-e93a57d58dfb)

# Summary
The goal is to perform exploratory data analysis on Mint Classics Company’s Database to create inventory-related business decisions that lead to the closure of a storage facility by using SQL statements. 

# Solution
From our research there is less demand for the products that are stored in the warehouse D.  Taking into consideration that we have to close down one of the storage facility, we can distribute the products from warehouse D to the other warehouses evenly because we want to maintain timely service to our customers throughout different countries. This will enable us to optimize our space utilization and ensure smooth closure of the storage area.

# Approach
Between 2003 and 2005, 303 orders were shipped, but due to lack of documentation in the warehouse and other reasons, some clients cancelled their orders. In 2003 36,439 orders were recorded but after two years it declined by half. The Classic Cars product line received the highest number of orders, while the Trains product line received the least number of orders so warehouses A, B, and C are the primary shipping hubs, while warehouses D serve as additional storage locations for inventory.

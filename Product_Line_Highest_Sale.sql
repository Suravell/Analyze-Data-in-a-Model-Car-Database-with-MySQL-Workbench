--Which productline got the highest number of sales.
select products.productLine, count(orderdetails.productCode) as no_of_sales
from products 
join orderdetails 
on products.productCode = orderdetails.productCode
group by products.productLine
order by no_of_sales desc;

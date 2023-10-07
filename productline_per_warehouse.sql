--Total amount of productlines per warehousecode.
SELECT warehousecode, count(productline)
from products
group by warehousecode;

SELECT warehousecode, count(productline)
from products
group by warehousecode;

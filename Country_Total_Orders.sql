--Countries with their total number of orders.
SELECT country, count(country) AS count
FROM orders
JOIN  customers ON orders.customernumber = customers.customernumber
group by country
order by count desc;

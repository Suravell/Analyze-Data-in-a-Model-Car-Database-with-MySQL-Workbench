--How many products has been Shipped, cancelled, disputed, on hold, resolved, in process from the period of 2003 and 2005.
SELECT status, COUNT(status) AS total_of_shipped
FROM orders
WHERE status = "Shipped"
OR status = "cancelled"
OR status = "disputed"
OR status = "on hold"
OR status = "resolved"
OR status = "in process"
group by status;

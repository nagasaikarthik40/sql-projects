SELECT * FROM flights;
SELECT actual_departure - scheduled_departure,
CASE
WHEN actual_departure - scheduled_departure< '00:05' THEN 'on time'
ELSE 'Late'
END
FROM flights;
SELECT * FROM bookings;
SELECT 
CASE 
WHEN total_amount >= 150000 THEN 'High price ticket'
WHEN total_amount BETWEEN 20000 AND 150000 THEN 'Mid price ticket'
ELSE 'Low price ticket'
END as category ,COUNT(CASE 
WHEN total_amount >= 150000 THEN 'High price ticket'
WHEN total_amount BETWEEN 20000 AND 150000 THEN 'Mid price ticket'
ELSE 'Low price ticket'
END )
FROM bookings GROUP BY category;
SELECT * FROM flights;
SELECT COUNT(CASE
WHEN EXTRACT(MONTH from scheduled_departure) IN (6,7,8) THEN 'Summer'
WHEN EXTRACT(MONTH from scheduled_departure) IN (9,10,11) THEN 'Fall'
END) AS flights,
CASE
WHEN EXTRACT(MONTH from scheduled_departure) IN (6,7,8) THEN 'Summer'
WHEN EXTRACT(MONTH from scheduled_departure) IN (9,10,11) THEN 'Fall'
END AS season
FROM flights
GROUP BY(CASE
WHEN EXTRACT(MONTH from scheduled_departure) IN (6,7,8) THEN 'Summer'
WHEN EXTRACT(MONTH from scheduled_departure) IN (9,10,11) THEN 'Fall'
END);
SELECT * FROM flights;

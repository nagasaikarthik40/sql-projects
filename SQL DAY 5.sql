SELECT * FROM film;
SELECT title,
CASE 
WHEN rating = 'PG' OR rating = 'PG-13' OR length > 210 THEN 'Great rating or long (tier-1)'
WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier-2)'
WHEN description LIKE '%Drama%' AND length < 90 THEN 'short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END as tier_list
FROM film
WHERE 
Case
WHEN rating = 'PG' OR rating = 'PG-13' OR length > 210 THEN 'Great rating or long (tier-1)'
WHEN description LIKE '%Drama%' AND length > 90 THEN 'Long drama (tier-2)'
WHEN description LIKE '%Drama%' AND length < 90 THEN 'short drama (tier 3)'
WHEN rental_rate < 1 THEN 'Very cheap (tier 4)'
END is not null
SELECT * FROM film;
SELECT
SUM(CASE
WHEN rating = 'PG' THEN 1
END) as PG,
SUM(CASE
WHEN rating = 'G' THEN 1
END) as G,
SUM(CASE
WHEN rating = 'R' THEN 1
END) as R,
SUM(CASE
WHEN rating = 'NC-17' THEN 1
END) as NC17,
SUM(CASE
WHEN rating = 'PG-13' THEN 1
END) as PG13
FROM film;
SELECT * FROM rental;
SELECT rental_date,COALESCE(CAST(return_date AS varchar), 'Not returned') AS ret FROM rental ORDER BY rental_date DESC;





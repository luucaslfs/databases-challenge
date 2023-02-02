USE desafiodb;

SHOW tables;

SELECT DISTINCT listing_id
FROM price_changes;

SELECT * FROM details;

SELECT COUNT(*) FROM details;

-- Questao 01
/* Essa consulta utiliza uma subquery para selecionar apenas a data mais recente 
de alteração de preço para cada imóvel.*/

-- SELECT
SELECT listing_id, max(change_date) as change_date
FROM price_changes
WHERE change_date LIKE '2016%'
AND new_price > old_price
GROUP BY listing_id;

-- RESOLVING
SELECT AVG((new_price-old_price)/(built_area+used_area)) as avg_price_per_sqm
FROM price_changes
JOIN (SELECT listing_id, max(change_date) as change_date
FROM price_changes
WHERE change_date LIKE '2016%'
AND old_price > 0
AND new_price > old_price
GROUP BY listing_id) as last_changes
ON price_changes.listing_id = last_changes.listing_id
AND price_changes.change_date = last_changes.change_date
JOIN built_used_area
ON price_changes.listing_id = built_used_area.listing_id
WHERE (built_area > 200 OR used_area > 200);


-- Questao 02


SELECT COUNT(*) as number_of_properties, AVG((new_price-old_price)/old_price*100) as avg_price_percent_increase
FROM price_changes
JOIN built_used_area
ON price_changes.listing_id = built_used_area.listing_id
WHERE change_date LIKE '2016%'
AND old_price > 0
AND new_price > old_price;

SELECT COUNT(*) as number_of_properties, AVG((old_price-new_price)/old_price*100) as avg_price_percent_decrease
FROM price_changes
JOIN built_used_area
ON price_changes.listing_id = built_used_area.listing_id
WHERE change_date LIKE '2016%'
AND old_price > 0
AND new_price < old_price;
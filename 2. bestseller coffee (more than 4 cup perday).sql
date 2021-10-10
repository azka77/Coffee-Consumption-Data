SELECT DISTINCT coffeetype, count(coffeetype) AS 'number_of_person'
FROM coffee_table
WHERE coffeecupsperday >= 4
GROUP BY coffeetype;

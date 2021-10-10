SELECT 'yes' as 'do_coffee_solve_bugs?', count(coffeesolvebugs) as 'value', coffeetype
FROM coffee_table
WHERE coffeecupsperday >= 4
and coffeesolvebugs = 'yes'
group by coffeetype

union

SELECT 'sometimes' as 'do_coffee_solve_bugs?', count(coffeesolvebugs) as 'value', coffeetype
FROM coffee_table
WHERE coffeecupsperday >= 4
and coffeesolvebugs = 'sometimes'
group by coffeetype

UNION 

SELECT 'no' as 'do_coffee_solve_bugs?', count(coffeesolvebugs) as 'value', coffeetype
FROM coffee_table
WHERE coffeecupsperday >= 4
and coffeesolvebugs = 'no'
group by coffeetype;

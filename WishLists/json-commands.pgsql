-- SELECT pfirstname, pfavorites FROM "people" LIMIT 15;

-- SELECT pfirstname, CAST(' {"pfavorites":"Desserts"}' AS JSONB) FROM "people" LIMIT 10;

--Ninja #1
-- SELECT pfirstname, pfavorites -> 'Desserts' AS "DESSERTS" FROM "people" ORDER BY "DESSERTS" DESC LIMIT 15;

--Ninja #2
-- With Access Operator
-- SELECT pfirstname, pfavorites -> 'Desserts' @> CAST('["cake"]' AS JSONB) FROM "people" LIMIT 15;
-- W/out Access Operator
-- SELECT pfirstname, pfavorites @> CAST('{"Desserts":["cake"]}' AS JSONB) FROM "people" LIMIT 15;


--Ninja #3
SELECT pfirstname, pfavorites -> 'Desserts' ? 'ice cream' AS "<3 Freezers" FROM "people" ORDER BY "<3 Freezers" DESC;

-- SELECT pfirstname FROM PEOPLE WHERE pstate='CA';

-- #1 Select Name & Points over 5000.
SELECT pfirstname, plastname, ppoints AS "High Score" FROM "people" WHERE ppoints >= 5000  ORDER BY "High Score" DESC;

-- #2 Select Name, Points, State, Points Given State is NY or Points over 9500
SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 9500 OR pstate = 'NY' ORDER BY ppoints DESC;

-- #3 Select Name, State, & Points Given State is NY and Points over 7000
SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND pstate = 'NY' ORDER BY ppoints DESC;

-- #4 Select Name, State, Points Given State is not NY and Points over 7000 Using NOT and <>
SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND pstate <> 'NY' ORDER BY pstate DESC;
SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND NOT pstate = 'NY' ORDER BY pstate DESC;

-- #5.1 Select Name & DOB Given DOB Year Between '04 & '06
SELECT pfirstname, plastname, pdob FROM "people" WHERE pdob BETWEEN '2004-01-01 00:00:00' AND '2006-12-31 23:59:59' ORDER BY pdob DESC;
-- #5.2 Select Name & DOB Given DOB Year Between '00 & '10 and State is CA
SELECT pfirstname, plastname, pstate, pdob FROM "people" WHERE pdob BETWEEN '2000-01-01 00:00:00' AND '2010-12-31 23:59:59' AND pstate='CA' ORDER BY pdob DESC;

-- #6 Select Name & State Given State is WY, KY or GA and is not WY, KY or GA
SELECT pfirstname, plastname, pstate FROM "people" WHERE pstate IN ('WY', 'KY', 'GA') ORDER BY pstate;
SELECT pfirstname, plastname, pstate FROM "people" WHERE pstate NOT IN ('WY', 'KY', 'GA') ORDER BY pstate;

-- #7 Select Name & City Given City Contains 'b'
SELECT pfirstname, plastname, pcity FROM "people" WHERE pcity LIKE '%b%' ORDER BY pcity;


-- #8 Select Name & Favorites Given First Dessert contains 'a' or 'A'
-- JSON Shenanigans. What even.

SELECT pfirstname, pfavorites -> 'Desserts' ->> 0 AS "Sweets" FROM "people";

-- Valid. Gives Boolean value for "Sweets"
-- SELECT pfirstname, pfavorites -> 'Desserts' ->> 0 ILIKE '%a%' AS "Sweets" FROM "people" ORDER BY "Sweets";

-- Valid. Gives Boolean value for "Sweets"
-- SELECT pfirstname, CAST(pfavorites -> 'Desserts' -> 0 AS TEXT) ILIKE '%a%' AS "Sweets" FROM "people" ORDER BY "Sweets";


-- Invalid. "column Sweets does not exist"
-- SELECT pfirstname, pfavorites -> 'Desserts' -> 0 AS "Sweets" FROM "people" WHERE "Sweets" ILIKE '%a%' ORDER BY "Sweets";

-- Valid. This is totally OK
-- SELECT pfirstname, pfavorites -> 'Desserts' -> 0 AS "Sweets" FROM "people" WHERE pfavorites -> 'Desserts' ->> 0  ILIKE '%a%' ORDER BY "Sweets";
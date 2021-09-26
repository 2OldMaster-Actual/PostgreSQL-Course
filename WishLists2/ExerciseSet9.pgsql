-- SELECT pfirstname FROM PEOPLE WHERE pstate='CA';

-- SELECT pfirstname, plastname, ppoints AS "High Score" FROM "people" WHERE ppoints >= 5000  ORDER BY "High Score" DESC;

-- SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 9500 OR pstate = 'NY' ORDER BY ppoints DESC;

-- SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND pstate = 'NY' ORDER BY ppoints DESC;

-- SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND pstate <> 'NY' ORDER BY pstate DESC;
-- SELECT pfirstname, plastname, pstate, ppoints FROM "people" WHERE ppoints >= 7000 AND NOT pstate = 'NY' ORDER BY pstate DESC;

-- SELECT pfirstname, plastname, pdob FROM "people" WHERE pdob BETWEEN '2004-01-01 00:00:00' AND '2006-12-31 23:59:59' ORDER BY pdob DESC;
-- SELECT pfirstname, plastname, pstate, pdob FROM "people" WHERE pdob BETWEEN '2000-01-01 00:00:00' AND '2010-12-31 23:59:59' AND pstate='CA' ORDER BY pdob DESC;


-- SELECT pfirstname, plastname, pstate FROM "people" WHERE pstate IN ('WY', 'KY', 'GA') ORDER BY pstate;
-- SELECT pfirstname, plastname, pstate FROM "people" WHERE pstate NOT IN ('WY', 'KY', 'GA') ORDER BY pstate;

-- SELECT pfirstname, plastname, pcity FROM "people" WHERE pcity LIKE '%b%' ORDER BY pcity;



-- JSON Understanding Required
SELECT pfirstname, pfavorites -> 'Desserts' ->> 0 AS "Sweets" FROM "people";

-- Valid. Gives Boolean value for "Sweets"
-- SELECT pfirstname, pfavorites -> 'Desserts' ->> 0 ILIKE '%a%' AS "Sweets" FROM "people" ORDER BY "Sweets";

-- Valid. Gives Boolean value for "Sweets"
-- SELECT pfirstname, CAST(pfavorites -> 'Desserts' -> 0 AS TEXT) ILIKE '%a%' AS "Sweets" FROM "people" ORDER BY "Sweets";


-- Invalid. "column Sweets does not exist"
-- SELECT pfirstname, pfavorites -> 'Desserts' -> 0 AS "Sweets" FROM "people" WHERE "Sweets" ILIKE '%a%' ORDER BY "Sweets";

-- Valid. This is totally OK
-- SELECT pfirstname, pfavorites -> 'Desserts' -> 0 AS "Sweets" FROM "people" WHERE pfavorites -> 'Desserts' ->> 0  ILIKE '%a%' ORDER BY "Sweets";
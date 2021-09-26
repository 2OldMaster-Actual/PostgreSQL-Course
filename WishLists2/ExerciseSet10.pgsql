-- Exercise Set #10

-- SELECT pid, pfirstname, plastname FROM "people" WHERE pid = 18;

-- SELECT pfirstname, plastname FROM "people" WHERE pfirstname LIKE '%e%' ORDER BY pfirstname;

-- SELECT pfirstname, plastname, pstate, pdob FROM "people" WHERE (pfirstname LIKE '%e%' OR plastname LIKE '%e%') AND pstate = 'CA' AND pdob > '12-31-1999';

-- SELECT pfirstname, plastname, pdob FROM "people" WHERE pdob < (CURRENT_DATE - INTERVAL '10 YEAR') ORDER BY pdob DESC;

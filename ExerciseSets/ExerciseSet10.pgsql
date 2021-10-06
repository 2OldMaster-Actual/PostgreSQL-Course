-- #1 Select ID & Name Given ID is 18
SELECT pid, pfirstname, plastname FROM "people" WHERE pid = 18;

-- #2 Select Name Given First Name Contains 'e'
SELECT pfirstname, plastname FROM "people" WHERE pfirstname LIKE '%e%' ORDER BY pfirstname;

-- #3 Select Name, State, & DOB Given Name Contains 'e', State is CA, & DOB >12/31/1999
SELECT pfirstname, plastname, pstate, pdob FROM "people" WHERE (pfirstname LIKE '%e%' OR plastname LIKE '%e%') AND pstate = 'CA' AND pdob > '12-31-1999';

-- #4 Select Name & DOB Given DOB >10 Years Old
SELECT pfirstname, plastname, pdob FROM "people" WHERE pdob < (CURRENT_DATE - INTERVAL '10 YEAR') ORDER BY pdob DESC;

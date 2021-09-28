-- SELECT pfirstname, plastname FROM people ORDER BY people.pid ASC LIMIT 10;

-- SELECT people.pfirstname, people.plastname, lists.lname FROM people LEFT JOIN lists USING (pid) ORDER BY people.pid ASC LIMIT 10;

-- SELECT people.pid, people.pfirstname, people.plastname, lists.lname, items.iname FROM (people LEFT JOIN lists USING (pid)) LEFT JOIN listitems USING (lid) LEFT JOIN items USING (iid) ORDER BY people.pid ASC LIMIT 10;
-- #1 Select All Customers Joined By Rental Transaction & Applicable Movie
SELECT customers.cname, rentals.rid, movies.mname FROM (movies RIGHT JOIN rentals USING (mid)) RIGHT JOIN customers USING (cid) ORDER BY customers.cname ASC;

-- #2 Select All Movies Joined By Rental Transactions & Applicaable Customers Using Right & Left Joins
SELECT movies.mname, rentals.rid, customers.cname FROM (customers RIGHT JOIN rentals USING (cid)) RIGHT JOIN movies USING (mid) ORDER BY movies.mname ASC;
SELECT movies.mname, rentals.rid, customers.cname FROM (movies LEFT JOIN rentals USING (mid)) LEFT JOIN customers USING (cid) ORDER BY movies.mname ASC;

-- #3 Select All Customers & Employees
SELECT customers.cname FROM customers UNION SELECT employees.ename FROM employees;


-- #4.1 Select Names of First 10 People
SELECT pfirstname, plastname FROM people ORDER BY people.pid ASC LIMIT 10;
-- #4.2 Select Names & Associated Lists
SELECT people.pfirstname, people.plastname, lists.lname FROM people LEFT JOIN lists USING (pid) ORDER BY people.pid ASC LIMIT 10;
-- #4.3 Select Names, Associated Lists, & Items In Associated Lists
SELECT people.pid, people.pfirstname, people.plastname, lists.lname, items.iname FROM (people LEFT JOIN lists USING (pid)) LEFT JOIN listitems USING (lid) LEFT JOIN items USING (iid) ORDER BY people.pid ASC LIMIT 10;
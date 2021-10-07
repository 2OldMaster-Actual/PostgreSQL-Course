-- SELECT * FROM employees;
-- SELECT * FROM department;

-- #1 Select Name & Dept of Employees In Sales
-- w/out subquery
SELECT employees.ename, department.dept FROM employees JOIN department USING (eid) WHERE department.dept = 'Sales';
-- w/Subquery. Returns Shannon in Dept Null
SELECT employees.ename, (SELECT department.dept WHERE department.dept = 'Sales') FROM employees JOIN department USING (eid);
-- w/Subquery. Given solution
SELECT (SELECT employees.ename FROM employees WHERE employees.eid = department.eid) AS "Name", department.dept FROM department WHERE department.dept = 'Sales';


-- #2 Select Name, Movie Title, Transaction ID of First 10 Transactions
-- w/out subquery
SELECT customers.cname, movies.mname, rentals.rid FROM (customers JOIN rentals USING (cid)) JOIN movies USING (mid) ORDER BY rentals.rid ASC LIMIT 10;
-- w/subquery
SELECT (SELECT customers.cname FROM customers WHERE rentals.cid = customers.cid), (SELECT movies.mname FROM movies WHERE rentals.mid = movies.mid), rentals.rid FROM rentals ORDER BY rentals.rid ASC LIMIT 10;


-- #3 Select All Employees, Select Dept If Assigned
-- w/out subquery
SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;
-- w/subquery
SELECT employees.ename, (SELECT department.dept FROM department WHERE department.eid = employees.eid) FROM employees;


-- #4 Select All Dept's, Select Employee if Assigned
-- w/out subquery
SELECT department.dept, employees.ename FROM employees RIGHT JOIN department ON employees.eid = department.eid;
-- w/out subquery
SELECT department.dept, employees.ename FROM department LEFT JOIN employees USING (eid);
-- w/subquery
SELECT department.dept, (SELECT employees.ename FROM employees WHERE employees.eid = department.eid) FROM department;


-- UNFINISHED (No Solution)
-- #5 Select All Customers Joined By Rental Transaction & Applicable Movie (Use LEFT JOIN)
-- w/out subquery
-- SELECT customers.cname, rentals.rid, movies.mname FROM (movies RIGHT JOIN rentals USING (mid)) RIGHT JOIN customers USING (cid) ORDER BY customers.cname ASC;
-- Missing FROM clause for table rentals
-- SELECT customers.cname, rentals.rid FROM customers WHERE (customers.cid = rentals.cid);
-- Missing FROM clause for table rentals
-- SELECT cname, (SELECT rentals.rid FROM rentals WHERE rentals.cid = customers.cid), (SELECT movies.mname FROM movies WHERE movies.mid = rentals.mid) FROM customers;


-- #6 Select All Customers & Employees
-- w/out subquery
-- SELECT customers.cname FROM customers UNION SELECT employees.ename FROM employees;
-- w/subquery
-- SELECT (SELECT customers.cname FROM customers) 


-- #7 Select Names, Associated Lists, & Items In Associated Lists
-- w/out subquery
-- SELECT people.pid, people.pfirstname, people.plastname, lists.lname, items.iname FROM (people LEFT JOIN lists USING (pid)) LEFT JOIN listitems USING (lid) LEFT JOIN items USING (iid) ORDER BY people.pid ASC LIMIT 10;
-- w/subquery
-- Gives error "Returns more than one row". Some people have multiple lists.
-- SELECT people.pid, people.pfirstname, plastname, (SELECT lists.lname FROM lists WHERE lists.pid = people.pid) FROM people ORDER BY people.pid ASC LIMIT 10;

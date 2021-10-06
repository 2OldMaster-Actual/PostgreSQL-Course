-- #1 Select Name & Dept of Employees In Sales
SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid WHERE department.dept = 'Sales';

-- #2 Select Name, Movie Title, Transaction ID of First 10 Transactions
SELECT customers.cname, movies.mname, rentals.rid FROM (customers JOIN rentals USING (cid)) JOIN movies USING (mid) ORDER BY rentals.rid ASC LIMIT 10;

-- #3 Select All Employees, Select Dept If Assigned
SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;

-- #4 Select All Dept's, Select Employee if Assigned
SELECT employees.ename, department.dept FROM employees RIGHT JOIN department ON employees.eid = department.eid;

-- #5 Select All Customers, Any Rental ID's, Movies Associated with Rental ID
SELECT customers.cname, rentals.rid, movies.mname FROM (customers LEFT JOIN rentals USING (cid)) LEFT JOIN movies USING (mid) ORDER BY customers.cname ASC;
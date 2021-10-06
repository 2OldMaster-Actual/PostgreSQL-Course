-- SELECT * FROM employees;
-- SELECT * FROM department;

-- #1 w/out Subquery
-- SELECT employees.ename, department.dept FROM employees JOIN department USING (eid) WHERE department.dept = 'Sales';
-- #1 w/Subquery. Returns Shannon in Dept Null
-- SELECT employees.ename, (SELECT department.dept WHERE department.dept = 'Sales') FROM employees JOIN department USING (eid);
-- #1 w/Subquery. Given solution
-- SELECT (SELECT employees.ename FROM employees WHERE employees.eid = department.eid) AS "Name", department.dept FROM department WHERE department.dept = 'Sales';


-- #2 w/out subquery
-- SELECT customers.cname, movies.mname, rentals.rid FROM customers JOIN rentals USING (cid) JOIN movies USING (mid) ORDER BY rentals.rid ASC LIMIT 10;
-- SELECT (SELECT customers.cname FROM customers WHERE rentals.cid = customers.cid), (SELECT movies.mname FROM movies WHERE rentals.mid = movies.mid), rentals.rid FROM rentals ORDER BY rentals.rid ASC LIMIT 10;

-- #3
SELECT employees.ename, department.dept FROM employees NATURAL LEFT JOIN department;

-- SELECT employees.ename, (SELECT department.dept FROM department WHERE( EXISTS ( SELECT department.eid FROM department WHERE employees.eid = department.eid)) FROM ;
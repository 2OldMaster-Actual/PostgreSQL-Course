-- SELECT employees.ename, department.dept FROM employees JOIN department ON employees.eid = department.eid WHERE department.dept = 'Sales';

-- SELECT customers.cname, movies.mname, rentals.rid FROM (customers JOIN rentals USING (cid)) JOIN movies USING (mid) ORDER BY rentals.rid ASC LIMIT 10;

-- SELECT employees.ename, department.dept FROM employees LEFT JOIN department ON employees.eid = department.eid;

-- SELECT employees.ename, department.dept FROM employees RIGHT JOIN department ON employees.eid = department.eid;

-- SELECT customers.cname, rentals.rid, movies.mname FROM (customers LEFT JOIN rentals USING (cid)) LEFT JOIN movies USING (mid) ORDER BY customers.cname ASC;
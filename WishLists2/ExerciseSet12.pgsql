-- SELECT customers.cname, rentals.rid, movies.mname FROM (movies RIGHT JOIN rentals USING (mid)) RIGHT JOIN customers USING (cid) ORDER BY customers.cname ASC;

-- SELECT movies.mname, rentals.rid, customers.cname FROM (customers RIGHT JOIN rentals USING (cid)) RIGHT JOIN movies USING (mid) ORDER BY movies.mname ASC;
-- SELECT movies.mname, rentals.rid, customers.cname FROM (movies LEFT JOIN rentals USING (mid)) LEFT JOIN customers USING (cid) ORDER BY movies.mname ASC;

-- SELECT customers.cname FROM customers UNION SELECT employees.ename FROM employees;


-- SCT pfirstname || ' ' || plastname || ' is ' ||  || ' years old.' AS "AGE" FROM people ORDER BY "AGE" DESC;

-- SELECT EXTRACT(YEAR FROM CURRENT_DATE)- EXTRACT(YEAR FROM pdob) FROM people;

SELECT pfirstname || ' ' || plastname || ' is ' || EXTRACT(YEAR FROM CURRENT_DATE)- EXTRACT(YEAR FROM pdob) || ' years old.' AS "AGE" FROM people ORDER BY "pdob" ASC;


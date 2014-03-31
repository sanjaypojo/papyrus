# Postgres Cheat Sheet

Just a quick reference for postgres - datatypes, queries, other tips and tricks.

## Data Types
Commonly used datatypes

	smallint (2 bytes)
	int (4 bytes)
	bigint (8 bytes)

	serial
    bigserial
    numeric(p)		// fixed length
	numeric(p,s)	// decimal fixed length

    char(n)		// Fixed Length
    varchar(n)
    text

	date
    time(p)
    timetz(p)
    timestamp(p)
    timestamptz(p)

## Query Information
Select statement

	SELECT title, director, year FROM tablename
	WHERE genre = thriller
	GROUP BY year
	ORDER BY title;

## Modify Table
Add Column

	ALTER TABLE film
    ADD COLUMN director varchar(50);

Modify Column

	ALTER TABLE distributors
    ALTER COLUMN address TYPE varchar(80),
    ALTER COLUMN name SET NOT NULL;

Delete Column

	ALTER TABLE distributors
    DROP COLUMN address RESTRICT;
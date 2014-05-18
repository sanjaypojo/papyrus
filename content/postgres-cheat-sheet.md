# Postgres Cheat Sheet

Just a quick reference for postgres - datatypes, queries, other tips and tricks.

### Query Information
Select statement

	SELECT title, director, year FROM tablename
	WHERE genre = "thriller"
	GROUP BY year
	ORDER BY title;

### Modify Table
Add a column

	ALTER TABLE film
    ADD COLUMN director varchar(50);

Modify a column

	ALTER TABLE distributors
    ALTER COLUMN address TYPE varchar(80),
    ALTER COLUMN name SET NOT NULL,
    ALTER COLUMN gender DROP NOT NULL,
    ALTER COLUMN phone TYPE numeric(12) USING phone::numeric ;

Delete a column

	ALTER TABLE distributors
    DROP COLUMN address RESTRICT;

### Constraints
Restrict column values to a list

    CREATE TABLE sometable (
        colors TEXT CHECK (colors IN ('red', 'green', 'blue'))
    )
    -- Note: Double quotes won't work (they'll look for a field)

### Data Types
Commonly used datatypes

    smallint (2 bytes)
    int (4 bytes)
    bigint (8 bytes)

    serial
    bigserial
    numeric(p)      // fixed length
    numeric(p,s)    // decimal fixed length

    char(n)     // Fixed Length
    varchar(n)
    text

    date
    time(p)
    timetz(p)
    timestamp(p)
    timestamptz(p)
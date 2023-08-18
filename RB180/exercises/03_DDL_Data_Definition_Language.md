1. **Create an Extrasolar Planetary Database**

- First create a postgresql database named "extrasolar"

```shell
# from terminal

createdb extrasolar

# or from within the console

CREATE DATABASE extrasolar;
```

- create two tables: `stars`

```sql
CREATE TABLE stars (
  id serial PRIMARY KEY,
  name varchar(25) UNIQUE NOT NULL,
  distance integer NOT NULL CHECK (distance > 0),
  spectral_type char(1),
  companions integer NOT NULL CHECK (companions >= 0)
);
```

- `planets` table

```sql
CREATE TABLE planets (
  id serial PRIMARY KEY,
  designation char(1) UNIQUE,
  mass integer
);
```



---



2. **Relating Stars and Planets**

- add `star_id` column to `planets` table

```SQL
ALTER TABLE planets
  ADD COLUMN star_id integer NOT NULL
  REFERENCES stars (id);
```



---



3. **Increase Star Name Length**

```SQL
ALTER TABLE stars
ALTER COLUMN name
 TYPE varchar (50);
```

**Further Exploration:**  No error is thrown and statement is executed because the existing value in the name field is not longer than 50 chars.



---



4. **Stellar Distance Precision**

```sql
ALTER TABLE stars
ALTER COLUMN distance 
 TYPE numeric;
```

**Further Exploration:** This does not raise any errors and nothing changes. If we went the other way (the value was a float but we changed the type to integer, then PGSQL would round the number automatically)



---



5. **Check Values in List**

```SQL
ALTER TABLE stars
  ADD CHECK (spectral_type IN ('0', 'B', 'A', 'F', 'G', 'K', 'M')),
  -- also possible: ADD CHECK (spectral_type ~ '[OBAFGKM]')
  -- also possible: ADD CHECK (spectral_type SIMILAR TO '(O|A|B|F|G|K|M)')
ALTER COLUMN spectral_type SET NOT NULL;
```

**Further Exploration**: If we try to add the NOT NULL constraint to rows that have NULL values we raise and error: `column "spectral_type" of relation "stars" contains null values`. If we try to add the CHECK constraint to rows that have values that violate the constraint, we also raise an error: `check constraint "stars_spectral_type_check" of relation "stars" is violated by some row`. To fix this, we either need to have such constraints before we add the data, delete the rows with violating data, or temporarily alter the data to fit the constraints.

Additionally for `CHECK` constraints (but not `NOT NULL` constraints) we can append the `NOT VALID` option to our check to skip validation of already included data:

```SQL
ADD CHECK (spectral_type IN ('0', 'B', 'A', 'F', 'G', 'K', 'M')) NOT VALID
```



---



6. **Enumerate Types**

```sql
ALTER TABLE stars
 DROP CONSTRAINT stars_spectral_type_check;

CREATE TYPE spectral as ENUM ('0', 'B', 'A', 'F', 'G', 'K', 'M');

ALTER TABLE stars
ALTER COLUMN spectral_type
 TYPE spectral 
USING spectral_type::spectral;
```

The `USING` clause tells PGSQL to use existing values in `spectral_type` as the `ENUM` values.

To later view the details of the `ENUM`:

```SQL
\dT+ spectral
+--------+----------+---------------+------+----------+-------------------+-------------+
| Schema | Name     | Internal name | Size | Elements | Access privileges | Description |
|--------+----------+---------------+------+----------+-------------------+-------------|
| public | spectral | spectral      | 4    | 0        | <null>            | <null>      |
|        |          |               |      | B        |                   |             |
|        |          |               |      | A        |                   |             |
|        |          |               |      | F        |                   |             |
|        |          |               |      | G        |                   |             |
|        |          |               |      | K        |                   |             |
|        |          |               |      | M        |                   |             |
+--------+----------+---------------+------+----------+-------------------+-------------+
SELECT 1
```



---



7. **Planetary Mass Precision**

```sql
ALTER TABLE planets
ALTER COLUMN mass TYPE numeric,
ALTER COLUMN mass SET NOT NULL,
  ADD CHECK (mass > 0.0),
ALTER COLUMN designation SET NOT NULL;
```

> Note in particular that the addition of a `CHECK` constraint is a table-level operation: we add the `CHECK` to the table rather than the `mass` column.



---



8. **Add a Semi-Major Axis Column**

```SQL
ALTER TABLE planets
ADD COLUMN semi_major_axis numeric NOT NULL;
```

**Further Exploration:** If we already have data in our table, then the NOT NULL constraint will raise an exception `column "semi_major_axis" of relation "planets" contains null values` because adding that column will fill the values in that column for our existing rows with `NULL`. Since our data set is small, the workaround here could be to delete those records from the `planets` table, add the the new column with the constraint, then re-add the records with values in the `semi_major_axis` column:

```SQL
DELETE FROM planets;

ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric NOT NULL;

INSERT INTO planets (designation, mass, star_id, semi_major_axis)
           VALUES ('b', 0.0036, 7, 0.04);
INSERT INTO planets (designation, mass, star_id, semi_major_axis)
           VALUES ('c', 0.1, 8, 40.0);
```

We could also add the column without the NOT NULL constraint, then update the values of those rows for that new column, then add the NOT NULL constraint:

```SQL
ALTER TABLE planets
  ADD COLUMN semi_major_axis numeric;
  
UPDATE planets SET semi_major_axis = 0.04 WHERE star_id = /* correct id */;
UPDATE planets SET semi_major_axis = 40.0 WHERE star_id = /* correct id */;

ALTER TABLE planets
ALTER COLUMN semi_major_axis
  SET NOT NULL;
```



---



9. **Add a Moons Table**

```SQL
CREATE TABLE moons (
  id serial PRIMARY KEY,
  designation integer UNIQUE NOT NULL CHECK (designation > 0),
  semi_major_axis numeric CHECK (semi_major_axis > 0.0),
  mass numeric CHECK (mass > 0.0),
  planet_id integer NOT NULL REFERENCES planets (id)
);
```



---



10. **Delete the Database**

```sql
-- First connect to a different database with the \c metacommand

\c /*some_database_name*/

DROP DATABASE extrasolar;
```








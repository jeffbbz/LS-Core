-- 1. Create a Database

-- SQL statement from within a PostgreSQL console:
CREATE DATABASE animals;

-- From command line terminal using wrapper function:
createdb animals

-- 2. Create a Table

-- With older non-standard `serial`
CREATE TABLE birds (
  id serial PRIMARY KEY, -- `serial` is a pseudo-type that auto-increments the values of `id` for each new created `birds` data row, setting as `PRIMARY KEY` also adds `NOT NULL` and `UNIQUE` constraints
  name varchar(25), -- `varchar` is the same as `character varying`
  age int, -- `int` is the same as `integer`
  species varchar(15)
);

-- with newer recommended standard IDENTITY
CREATE TABLE birds (
  id int PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name varchar(25),
  age int,
  species varchar(15)
);

-- 3. Insert Data

INSERT INTO birds (name, age, species)
VALUES
      ('Charlie', 3, 'Finch'),
      ('Allie', 5, 'Owl'),
      ('Jennifer', 3, 'Magpie'),
      ('Jamie', 4, 'Owl'),
      ('Roy', 8, 'Crow');

-- Further Exploration: If you leave off the column names the default is all columns of the table, specified in default order. 
-- In our example, we can deal with the issue of having the self-incrementing id column by using the DEFAULT keyword as its value:

INSERT INTO birds
     VALUES
            (DEFAULT, 'Charlie', 3, 'Finch'),
            (DEFAULT, 'Allie', 5, 'Owl'),
            (DEFAULT, 'Jennifer', 3, 'Magpie'),
            (DEFAULT, 'Jamie', 4, 'Owl'),
            (DEFAULT, 'Roy', 8, 'Crow');

-- 4. Select all data in table

SELECT * FROM birds;

-- or

SELECT id, name, age, species FROM birds;

-- +----+----------+-----+---------+
-- | id | name     | age | species |
-- |----+----------+-----+---------|
-- | 1  | Charlie  | 3   | Finch   |
-- | 2  | Allie    | 5   | Owl     |
-- | 3  | Jennifer | 3   | Magpie  |
-- | 4  | Jamie    | 4   | Owl     |
-- | 5  | Roy      | 8   | Crow    |
-- +----+----------+-----+---------+

-- 5. WHERE Clause

SELECT * FROM birds WHERE age < 5;

-- 6. Update Data

UPDATE birds SET species = 'Raven' WHERE species = 'Crow';

-- Further Exploration: Update the record for the owl named to jamie to be a hawk

UPDATE birds SET species = 'Hawk' WHERE species = 'Owl' AND name = 'Jamie';

-- 7. Delete Data

DELETE FROM birds WHERE age = 3 AND species = 'Finch';

-- 8. Add Constraint

ALTER TABLE birds ADD CONSTRAINT positive_age CHECK (age > 0);

-- 9. Drop Table

DROP TABLE birds;

-- First connect to a different database: \c some_other_db

DROP DATABASE animals;

-- Or \q to quit to terminal and then run wrapper function:

dropdb animals


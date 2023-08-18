1. **Set Up Database**

```sql
-- create new database from within console with SQL
CREATE DATABASE workshop;

-- connect to new database with console metacommand
\c workshop

-- create the devices table
CREATE TABLE devices (
  id serial PRIMARY KEY,
  name text NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP
);

-- create parts table
CREATE TABLE parts (
  id serial PRIMARY KEY,
  part_number integer UNIQUE NOT NULL,
  device_id integer REFERENCES devices (id)
);
```



---



2. **Insert Data for Parts and Devices**

```SQL
-- insert device rows into devices table
INSERT INTO devices (name)
VALUES ('Accelerometer'),
       ('Gyroscope');
       
-- insert corresponding parts rows into the parts table
INSERT INTO parts (part_number, device_id)
VALUES (4633, 1),
       (7434, 1),
       (442, 1),
       (957, 2),
       (6447, 2),
       (456, 2),
       (34, 2),
       (834, 2),
       (234, NULL),
       (7455, NULL),
       (454, NULL);
```



---



3. **INNER JOIN**

```SQL
SELECT devices.name, parts.part_number
  FROM devices
 INNER JOIN parts
    ON devices.id = parts.device_id;
    
+---------------+-------------+
| name          | part_number |
|---------------+-------------|
| Accelerometer | 4633        |
| Accelerometer | 7434        |
| Accelerometer | 442         |
| Gyroscope     | 957         |
| Gyroscope     | 6447        |
| Gyroscope     | 456         |
| Gyroscope     | 34          |
| Gyroscope     | 834         |
+---------------+-------------+
SELECT 8
```



---



4. **SELECT part_number**

```SQL
SELECT part_number
  FROM parts
 WHERE part_number::text LIKE '3%';
 
 -- or
 
SELECT part_number
 	FROM parts
 WHERE CAST ( part_number AS text ) LIKE '3%';
 
+-------------+
| part_number |
|-------------|
| 34          |
+-------------+
SELECT 1
```

Documentation for these answers comes from [4.2.9 Typecasts](https://www.postgresql.org/docs/15/sql-expressions.html#SQL-SYNTAX-TYPE-CASTS)



---



5. **Aggregate Functions**

```SQL
SELECT devices.name, count(parts.device_id) AS part_count
  FROM devices
  LEFT OUTER INNER JOIN parts
    ON devices.id = parts.device_id
 GROUP BY devices.name;
 
 +---------------+------------+
| name          | part_count |
|---------------+------------|
| Accelerometer | 3          |
| Gyroscope     | 5          |
+---------------+------------+
SELECT 2
```



---



6. **ORDER BY**

```SQL
SELECT devices.name, count(parts.device_id) AS part_count
  FROM devices
 INNER JOIN parts
    ON devices.id = parts.device_id
 GROUP BY devices.name
 ORDER BY part_count DESC;
```



---



7. **IS NULL and IS NOT NULL**

```sql
SELECT part_number, device_id
FROM parts
WHERE device_id IS NOT NULL;

+-------------+-----------+
| part_number | device_id |
|-------------+-----------|
| 4633        | 1         |
| 7434        | 1         |
| 442         | 1         |
| 957         | 2         |
| 6447        | 2         |
| 456         | 2         |
| 34          | 2         |
| 834         | 2         |
+-------------+-----------+
SELECT 8

SELECT part_number, device_id
FROM parts
WHERE device_id IS NULL;

+-------------+-----------+
| part_number | device_id |
|-------------+-----------|
| 234         | <null>    |
| 7455        | <null>    |
| 454         | <null>    |
+-------------+-----------+
SELECT 3
```



---



8. Oldest Device

```SQL
INSERT INTO devices (name) VALUES ('Magnetometer');
INSERT INTO parts (part_number, device_id) VALUES (323, 3);

SELECT name 
  FROM devices 
 ORDER BY created_at LIMIT 1;
 
-- or longer but a different way

SELECT name 
  FROM devices 
 ORDER BY CURRENT_TIMESTAMP - created_at 
  DESC LIMIT 1;
```



---



9. **UPDATE device_id**

```sQL
UPDATE parts 
   SET device_id = 1 
 WHERE id = 7 OR id = 8;
 
 -- Further Exploration
 UPDATE parts 
   SET device_id = 2 
 WHERE part_number = (SELECT min(part_number) FROM parts);
 
 SELECT * FROM parts;
 +----+-------------+-----------+
| id | part_number | device_id |
|----+-------------+-----------|
| 1  | 4633        | 1         |
| 2  | 7434        | 1         |
| 3  | 442         | 1         |
| 4  | 957         | 2         |
| 5  | 6447        | 2         |
| 6  | 456         | 2         |
| 9  | 234         | <null>    |
| 10 | 7455        | <null>    |
| 11 | 454         | <null>    |
| 12 | 323         | 3         |
| 8  | 834         | 1         |
| 7  | 34          | 2         |
+----+-------------+-----------+
```



---



10. **Delete Accelerometer**

```SQL
DELETE FROM parts WHERE device_id = 1;
DELETE FROM devices WHERE name = 'Accelerometer';
```

Note: If we swapped the order of these, we would get an error: `update or delete on table "devices" violates foreign key constraint "parts_device_id_fkey" on table "parts"
DETAIL:  Key (id)=(1) is still referenced from table "parts".` This is because our parts table has rows that reference that device which must be deleted first.

**Further Exploration**: We should have initiallly added the `ON DELETE CASCADE` constraint, which would then allow us to delete everything with just `DELETE FROM devices WHERE name = 'Accelerometer';`

To add this later, we need to drop our FK constraint and re-add it: 

```SQL
ALTER TABLE parts 
 DROP CONSTRAINT parts_device_id_fkey,
  ADD FOREIGN KEY (device_id) REFERENCES device(id) ON DELETE CASCADE;
```


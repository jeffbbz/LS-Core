1. Name and define the remaining 2 sublanguages, and give at least 2 examples of each.

Apart from Data Control Language (DCL), the other two sub-languages of SQL are DML (Data Manipulation Language) and DDL (Data Definition Language).

DDL is the language is concered with the structure or schema of data and is used to create, modify and delete databases and tables. It uses statements like `CREATE`, `ALTER`, `DROP`

DML is the language used to access, modify, update, and delete thedata values stored in the tables of a database. It uses statements like `SELECT`, `INPUT`, `UPDATE`, and`DELETE`

2. Which sublanguage is the following statement?

   ```sql
   SELECT column_name FROM my_table;
   ```

SELECT states are DML, Data Manipulation Language statements because we are querying (accessing or reading) the data values stored in a table.

3. DDL or DML?

```sql
CREATE TABLE things (
  id serial PRIMARY KEY,
  item text NOT NULL UNIQUE,
  material text NOT NULL
);
```

DDL, Data Defintion Language because we are creating a table `things` which is a schema/structure action and setting the column names, data types, and constraints and rules for the structure of that table. This statement does not do anything with data values just data definitions.

4. DDL or DML?

```sql
ALTER TABLE things
DROP CONSTRAINT things_item_key;
```

DDL (Data Definition Language) because we are using ALTER TABLE to drop or remove a table constraint which is an action that modifies the attributes and characteristics of the table, altering the data definitions.

5. DDL or DML?

```sql
INSERT INTO things VALUES (3, 'Scissors', 'Metal');
```

This is an example of DML (Data Manipulation Language). We are using `INSERT` into to input data values into a table, manipulating the actual data not the definitions of the data or table.

6. DDL or DML?

```sql
UPDATE things
SET material = 'plastic'
WHERE item = 'Cup';
```

This is an example of DML (Data Manipulation Language) because UPDATE statement is updating the data values of rows which meet a certain WHERE condition.

7. DDL, DML, or DCL?

```sql
\d things
```

This is a psql console meta-command which shows the schema for a table called `things`. It is not part of SQL.

8. DDL or DML?

```sql
DELETE FROM things WHERE item = 'Cup';
```

This  is an example of DML (Data Manipulation Language) because we deleting rows of data from the things table which match the WHERE condition but we are not deleting or altering the table definitions.

9. DDL or DML?

```sql
DROP DATABASE xyzzy;
```

This is an example of DDL (Data Definition Language) because we are deleting an entire database, which includes the data contained within but also includes the schema and structure. The main purpose is the deletion of data definitions, the deletion of data is just a side effect.

10. DDL or DML?

```sQL	
CREATE SEQUENCE part_number_sequence;
```

This is an example of DDL Data Definition Language. Adding a sequence object to a database structure is modifying the database definitions, no manipulating data. CREATE statements are generally thought of as DDL.
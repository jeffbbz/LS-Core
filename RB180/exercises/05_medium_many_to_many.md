1. **Set Up Database**

```sql
-- create new database
CREATE DATABASE billing

-- connect to new database
\c billing

-- create customers table
CREATE TABLE customers (
  id serial PRIMARY KEY,
  name text NOT NULL,
  payment_token char(8) UNIQUE NOT NULL 
  CHECK (payment_token ~ '^[A-Z]{8}$')
);

-- create services table
CREATE TABLE services (
  id serial PRIMARY KEY,
  description text NOT NULL,
  price numeric(10,2) NOT NULL CHECK (price >= 0.00)
);

-- insert data into customers table
INSERT INTO customers (name, payment_token)
VALUES ('Pat Johnson', 'XHGOAHEQ'),
       ('Nancy Monreal', 'JKWQPJKL'),
       ('Lynn Blake', 'KLZXWEEE'),
       ('Chen Ke-Hua', 'KWETYCVX'),
       ('Scott Lakso', 'UUEAPQPS'),
       ('Jim Pornot', 'XKJEYAZA');
       
-- insert data into services table
INSERT INTO services (description, price)
VALUES ('Unix Hosting', '5.95'),
       ('DNS', '4.95'),
       ('Whois Registration', '1.95'),
       ('High Bandwidth', '15.00'),
       ('Business Support', '250.00'),
       ('Dedicated Hosting', '50.00'),
       ('Bulk Email', '250.00'),
       ('One-to-one Training', '999.00');
       
-- create a join table to associate <-> services
CREATE TABLE customers_services (
  id serial PRIMARY KEY,
  service_id integer REFERENCES services (id) NOT NULL,
  customer_id integer REFERENCES customers (id) ON DELETE CASCADE NOT NULL,
  UNIQUE (service_id, customer_id)
);

-- insert join table data for customer services
INSERT INTO customers_services (customer_id, service_id)
VALUES (1, 1),
       (1, 2),
       (1, 3),
       (3, 1),
       (3, 2),
       (3, 3),
       (3, 4),
       (3, 5),
       (4, 1),
       (4, 4),
       (5, 1),
       (5, 2),
       (5, 6),
       (6, 1),
       (6, 6),
       (6, 7);
```



---



2. **Get Customers With Services**

```SQL
SELECT DISTINCT customers.* FROM customers
 INNER JOIN customers_services
    ON customers.id = customers_services.customer_id;

+----+-------------+---------------+
| id | name        | payment_token |
|----+-------------+---------------|
| 3  | Lynn Blake  | KLZXWEEE      |
| 6  | Jim Pornot  | XKJEYAZA      |
| 1  | Pat Johnson | XHGOAHEQ      |
| 4  | Chen Ke-Hua | KWETYCVX      |
| 5  | Scott Lakso | UUEAPQPS      |
+----+-------------+---------------+
SELECT 5
```



---



3. **Get Customers With No Services**

```SQL
SELECT customers.* FROM customers
  LEFT OUTER JOIN customers_services
    ON customers.id = customers_services.customer_id
 WHERE customers_services.service_id IS NULL;

+----+---------------+---------------+
| id | name          | payment_token |
|----+---------------+---------------|
| 2  | Nancy Monreal | JKWQPJKL      |
+----+---------------+---------------+

-- Further Exploration
SELECT DISTINCT customers.*, services.* FROM customers
  LEFT OUTER JOIN customers_services
    ON customers.id = customers_services.customer_id
  FULL OUTER JOIN services
    ON services.id = customers_services.service_id
 WHERE customers_services.service_id IS NULL;
 
+--------+---------------+---------------+--------+---------------------+--------+
| id     | name          | payment_token | id     | description         | price  |
|--------+---------------+---------------+--------+---------------------+--------|
| 2      | Nancy Monreal | JKWQPJKL      | <null> | <null>              | <null> |
| <null> | <null>        | <null>        | 8      | One-to-one Training | 999.00 |
+--------+---------------+---------------+--------+---------------------+--------+
SELECT 2
```



---



4. **Get Services With No Customers**

```SQL
SELECT services.description FROM customers_services
 RIGHT OUTER JOIN services
    ON services.id = customers_services.service_id
 WHERE customers_services.service_id is NULL;

+---------------------+
| description         |
|---------------------|
| One-to-one Training |
+---------------------+
SELECT 1

-- with left outer join for fun

SELECT services.description FROM services
  LEFT OUTER JOIN customers_services
    ON services.id = customers_services.service_id
 WHERE customers_services.service_id IS NULL;
```



---



5. **Services for each Customer**

```SQL
SELECT customers.name, string_agg(services.description, ', ') AS services
  FROM customers
  LEFT OUTER JOIN customers_services
    ON customers.id = customers_services.customer_id
  LEFT OUTER JOIN services
    ON services.id = customers_services.service_id
 GROUP BY customers.id
 ORDER BY customers.id;

+---------------+-------------------------------------------------------------------------+
| name          | services                                                                |
|---------------+-------------------------------------------------------------------------|
| Chen Ke-Hua   | Unix Hosting, High Bandwidth                                            |
| Jim Pornot    | Unix Hosting, Dedicated Hosting, Bulk Email                             |
| Nancy Monreal | <null>                                                                  |
| Lynn Blake    | Unix Hosting, DNS, Whois Registration, High Bandwidth, Business Support |
| Scott Lakso   | Unix Hosting, DNS, Dedicated Hosting                                    |
| Pat Johnson   | Unix Hosting, DNS, Whois Registration                                   |
+---------------+-------------------------------------------------------------------------+
SELECT 6

-- Further Exploration
SELECT 
  CASE WHEN lag(customers.name)
         OVER (ORDER BY customers.name) = name THEN NULL
       ELSE customers.name
  END AS name,
  services.description
 FROM customers
 LEFT OUTER JOIN customers_services
   ON customer_id = customers.id
 LEFT OUTER JOIN services
   ON services.id = service_id;
```



---



6. **Services With At Least 3 Customers**

```SQL
SELECT services.description, count(customers_services.service_id)
  FROM services
 INNER JOIN customers_services
    ON services.id = customers_services.service_id
 GROUP BY services.description
HAVING count(customers_services.service_id) >= 3;

+--------------+-------+
| description  | count |
|--------------+-------|
| DNS          | 3     |
| Unix Hosting | 5     |
+--------------+-------+
SELECT 2
```



---



7. **Total Gross Income**

```sql
SELECT sum(services.price) as gross
  FROM services
 INNER JOIN customers_services
    ON services.id = customers_services.service_id;
    
+--------+
| gross  |
|--------|
| 678.50 |
+--------+
SELECT 1
```



---



8. **Add New Customer**

```SQL
INSERT INTO customers (name, payment_token)
VALUES ('John Doe', 'EYODHLCN');

INSERT INTO customers_services (service_id, customer_id)
VALUES (1, 7),
       (2, 7),
       (3, 7);
```



---



9. **Hypothetically**

```sQL
-- current expected income from services over $100
SELECT sum(services.price) 
  FROM services
 INNER JOIN customers_services
    ON services.id = customers_services.service_id
 WHERE services.price > 100.00;
 
+--------+
| sum    |
|--------|
| 500.00 |
+--------+
SELECT 1

-- hypothetical maximum income from all services over $100
SELECT sum(services.price)
  FROM customers
 CROSS JOIN services
 WHERE services.price > 100.00;
 
+----------+
| sum      |
|----------|
| 10493.00 |
+----------+
SELECT 1
```



---



10. **Deleting Rows**

```SQL
-- Delete service id from join table
DELETE FROM customers_services
WHERE service_id = 7;

-- delete service from services table
DELETE FROM services
WHERE description = 'Bulk Email';

-- delete customer from customers table
DELETE FROM customers
WHERE name = 'Chen Ke-Hua';
```


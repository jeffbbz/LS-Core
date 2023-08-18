1. **Set Up Database using \copy** 

```sql
-- create new database using \copy
CREATE DATABASE auction

-- connect to new database
\c auction

-- create bidders table
CREATE TABLE bidders (
  id serial PRIMARY KEY,
  name text NOT NULL
);

-- create items table
CREATE TABLE items (
  id serial PRIMARY KEY,
  name text NOT NULL,
  initial_price numeric(6, 2) NOT NULL CHECK(initial_price BETWEEN 0.01 AND 1000.00),
  sales_price numeric(6, 2) CHECK(sales_price BETWEEN 0.01 AND 1000.00)
);

-- create bids table
CREATE TABLE bids (
  id serial PRIMARY KEY,
  bidder_id integer NOT NULL REFERENCES bidders (id) ON DELETE CASCADE, 
  item_id integer NOT NULL REFERENCES items (id) ON DELETE CASCADE,
  amount numeric(6, 2) NOT NULL CHECK(amount BETWEEN 0.01 AND 1000.00)
);

-- create composite index of bids.bidder_id and bids.item_id
CREATE INDEX ON bids (bidders_id, item_id);

-- copy data to tables with \copy PGSQL meta-command (after making csv files)
\copy bidders FROM 'path_to_file.../bidders.csv' WITH HEADER CSV
\copy items FROM 'path_to_file.../items.csv' WITH HEADER CSV
\copy bids FROM 'path_to_file.../bids.csv' WITH HEADER CSV
```



---



2. **Conditional Subqueries: IN**

```SQL
SELECT name AS "Bid on Items" FROM items WHERE id IN
(SELECT DISTINCT item_id FROM bids);

+---------------+
| Bid on Items  |
|---------------|
| Video Game    |
| Outdoor Grill |
| Painting      |
| Tent          |
| Vase          |
+---------------+
SELECT 5
```



---



3. **Conditional Subqueries: NOT IN**

```SQL
SELECT name AS "Not Bid On" FROM items
WHERE id NOT IN (SELECT item_id FROM bids);
+------------+
| Not Bid On |
|------------|
| Television |
+------------+
```



---



4. **Conditional Subqueries: EXISTS**

```SQL
SELECT name FROM bidders WHERE EXISTS
(SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);

+-----------------+
| name            |
|-----------------|
| Alison Walker   |
| James Quinn     |
| Taylor Williams |
| Alexis Jones    |
| Gwen Miller     |
| Alan Parker     |
+-----------------+
SELECT 6

-- Further Exploration: Same Result with Join Clause
SELECT bidders.name FROM bidders
 INNER JOIN bids
         ON bidders.id = bids.bidder_id
 GROUP BY bidders.id
 ORDER BY bidders.id;
+-----------------+
| name            |
|-----------------|
| Alison Walker   |
| James Quinn     |
| Taylor Williams |
| Alexis Jones    |
| Gwen Miller     |
| Alan Parker     |
+-----------------+
SELECT 6

```



---



5. **Query From a Transient Table**

```SQL
SELECT max(bid_count.count) FROM
 (SELECT count(bidder_id) FROM bids GROUP BY bidder_id) AS bid_count;
+-----+
| max |
|-----|
| 9   |
+-----+

-- NOTE: bid_count is an alias for the whole generated table of the subquery! The column name is count.
```



---



6. **Scalar Subqueries**

```SQL
SELECT name, (SELECT COUNT(item_id) FROM bids WHERE item_id = items.id) FROM items;

-- Further Exploration
SELECT items.name, count(bids.item_id)
  FROM items
  LEFT OUTER JOIN bids
    ON items.id = bids.item_id
 GROUP BY items.id
 ORDER BY items.id;
```



---



7. **ROW Comparison**

```sql
 SELECT id FROM items
 WHERE ROW('Painting', 100.00, 250.00) = ROW(name, initial_price, sales_price);
+----+
| id |
|----|
| 3  |
+----+
```



---



8. **EXPLAIN**

```SQL
-- EXPLAIN ONLY
EXPLAIN SELECT name FROM bidders
                WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);
                
+--------------------------------------------------------------------------+
| QUERY PLAN                                                               |
|--------------------------------------------------------------------------|
| Hash Join  (cost=33.38..66.47 rows=635 width=32)                         |
|   Hash Cond: (bidders.id = bids.bidder_id)                               |
|   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36)         |
|   ->  Hash  (cost=30.88..30.88 rows=200 width=4)                         |
|         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4)          |
|               Group Key: bids.bidder_id                                  |
|               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) |
+--------------------------------------------------------------------------+
EXPLAIN 7

-- EXPLAIN ANALYZE
EXPLAIN ANALYZE SELECT name FROM bidders
                 WHERE EXISTS (SELECT 1 FROM bids WHERE bids.bidder_id = bidders.id);
                 
+---------------------------------------------------------------------------------------
| QUERY PLAN                                                                                                          |
|---------------------------------------------------------------------------------------
| Hash Join  (cost=33.38..66.47 rows=635 width=32) (actual time=0.028..0.030 rows=6 loops=1)                          |
|   Hash Cond: (bidders.id = bids.bidder_id)                                                                          |
|   ->  Seq Scan on bidders  (cost=0.00..22.70 rows=1270 width=36) (actual time=0.007..0.008 rows=7 loops=1)          |
|   ->  Hash  (cost=30.88..30.88 rows=200 width=4) (actual time=0.017..0.018 rows=6 loops=1)                          |
|         Buckets: 1024  Batches: 1  Memory Usage: 9kB                                                                |
|         ->  HashAggregate  (cost=28.88..30.88 rows=200 width=4) (actual time=0.015..0.016 rows=6 loops=1)           |
|               Group Key: bids.bidder_id                                                                             |
|               Batches: 1  Memory Usage: 40kB                                                                        |
|               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.004..0.006 rows=26 loops=1) |
| Planning Time: 0.110 ms                                                                                             |
| Execution Time: 0.052 ms                                                                                            |
+---------------------------------------------------------------------------------------
EXPLAIN 11
```



---



9. **Comparing SQL Statements**

```sQL
-- Subquery
EXPLAIN ANALYZE SELECT MAX(bid_counts.count) FROM
   (SELECT COUNT(bidder_id) FROM bids GROUP BY bidder_id) AS bid_counts;
+---------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                    |
|---------------------------------------------------------------------------------------------------------------|
| Aggregate  (cost=37.15..37.16 rows=1 width=8) (actual time=0.021..0.021 rows=1 loops=1)                       |
|   ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.018..0.019 rows=6 loops=1)          |
|         Group Key: bids.bidder_id                                                                             |
|         Batches: 1  Memory Usage: 40kB                                                                        |
|         ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.007..0.009 rows=26 loops=1) |
| Planning Time: 0.066 ms                                                                                       |
| Execution Time: 0.050 ms                                                                                      |
+---------------------------------------------------------------------------------------------------------------+
EXPLAIN 7

-- without subquery
EXPLAIN ANALYZE SELECT COUNT(bidder_id) AS max_bid FROM bids
   GROUP BY bidder_id
   ORDER BY max_bid DESC
   LIMIT 1;
+---------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                          |
|---------------------------------------------------------------------------------------------------------------------|
| Limit  (cost=35.65..35.65 rows=1 width=12) (actual time=0.021..0.022 rows=1 loops=1)                                |
|   ->  Sort  (cost=35.65..36.15 rows=200 width=12) (actual time=0.020..0.021 rows=1 loops=1)                         |
|         Sort Key: (count(bidder_id)) DESC                                                                           |
|         Sort Method: top-N heapsort  Memory: 25kB                                                                   |
|         ->  HashAggregate  (cost=32.65..34.65 rows=200 width=12) (actual time=0.015..0.017 rows=6 loops=1)          |
|               Group Key: bidder_id                                                                                  |
|               Batches: 1  Memory Usage: 40kB                                                                        |
|               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.005..0.007 rows=26 loops=1) |
| Planning Time: 0.091 ms                                                                                             |
| Execution Time: 0.045 ms                                                                                            |
+---------------------------------------------------------------------------------------------------------------------+
EXPLAIN 10

-- For me the non-subquery statement was faster and less resource intensive?

-- Further Exploration

	-- Scalar Subquery
EXPLAIN ANALYZE SELECT name,
 (SELECT COUNT(item_id) FROM bids WHERE item_id = items.id)
 FROM items;
+-------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                  |
|-------------------------------------------------------------------------------------------------------------|
| Seq Scan on items  (cost=0.00..25455.20 rows=880 width=40) (actual time=0.017..0.036 rows=6 loops=1)        |
|   SubPlan 1                                                                                                 |
|     ->  Aggregate  (cost=28.89..28.91 rows=1 width=8) (actual time=0.004..0.004 rows=1 loops=6)             |
|           ->  Seq Scan on bids  (cost=0.00..28.88 rows=8 width=4) (actual time=0.002..0.003 rows=4 loops=6) |
|                 Filter: (item_id = items.id)                                                                |
|                 Rows Removed by Filter: 22                                                                  |
| Planning Time: 0.075 ms                                                                                     |
| Execution Time: 0.051 ms                                                                                    |
+-------------------------------------------------------------------------------------------------------------+
EXPLAIN 8

	-- JOIN
EXPLAIN ANALYZE SELECT items.name, count(bids.item_id)
  FROM items
  LEFT OUTER JOIN bids
    ON items.id = bids.item_id
 GROUP BY items.id
 ORDER BY items.id;
 
 +---------------------------------------------------------------------------------------------------------------------------+
| QUERY PLAN                                                                                                                |
|---------------------------------------------------------------------------------------------------------------------------|
| Sort  (cost=118.27..120.47 rows=880 width=44) (actual time=0.039..0.040 rows=6 loops=1)                                   |
|   Sort Key: items.id                                                                                                      |
|   Sort Method: quicksort  Memory: 25kB                                                                                    |
|   ->  HashAggregate  (cost=66.44..75.24 rows=880 width=44) (actual time=0.033..0.036 rows=6 loops=1)                      |
|         Group Key: items.id                                                                                               |
|         Batches: 1  Memory Usage: 49kB                                                                                    |
|         ->  Hash Right Join  (cost=29.80..58.89 rows=1510 width=40) (actual time=0.017..0.026 rows=27 loops=1)            |
|               Hash Cond: (bids.item_id = items.id)                                                                        |
|               ->  Seq Scan on bids  (cost=0.00..25.10 rows=1510 width=4) (actual time=0.003..0.005 rows=26 loops=1)       |
|               ->  Hash  (cost=18.80..18.80 rows=880 width=36) (actual time=0.011..0.011 rows=6 loops=1)                   |
|                     Buckets: 1024  Batches: 1  Memory Usage: 9kB                                                          |
|                     ->  Seq Scan on items  (cost=0.00..18.80 rows=880 width=36) (actual time=0.006..0.006 rows=6 loops=1) |
| Planning Time: 0.097 ms                                                                                                   |
| Execution Time: 0.078 ms                                                                                                  |
+---------------------------------------------------------------------------------------------------------------------------+
EXPLAIN 14

Scalar Subquery is faster but much more resource intensive.

```






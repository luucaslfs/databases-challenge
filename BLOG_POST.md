

## Joins

### Inner, Right, and Left Joins in SQL

In SQL, a join is used to combine rows from two or more tables based on a related column between them. There are several types of joins, including inner, right, and left. Here is a brief explanation of each type:

### INNER JOIN

An inner join returns rows from both tables that meet the join condition. It only returns rows that have a match in both tables. An inner join is the default join type in SQL, so you don't have to specify "INNER" when writing a join query.

### LEFT JOIN

A left join returns all rows from the left table and any matching rows from the right table. If there is no match, NULL values are returned for right table's columns.

### RIGHT JOIN

A right join is similar to a left join, but it returns all rows from the right table and any matching rows from the left table. If there is no match, NULL values are returned for left table's columns.

Here is an example of how you might use a join in a SQL query:
```
SELECT *
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id
```

This query would return all rows from the "customers" and "orders" tables where the "customer_id" column in the "customers" table is equal to the "customer_id" column in the "orders" table. The result would include all columns from both tables.

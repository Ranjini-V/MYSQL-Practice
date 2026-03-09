# MYSQL-Practice

A structured collection of **MySQL** practice scripts demonstrating hands-on use of DDL, DML, and DQL commands. Useful for backend data validation in QA workflows — verifying that application data is correctly stored, updated, and retrieved in the database.

---

## Tech Stack

| Tool | Purpose |
|------|---------|
| MySQL | Relational database |
| MySQL Workbench | GUI for query execution |


---

## Concepts Covered

### DDL — Data Definition Language
- `CREATE TABLE` with constraints (PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE)
- `ALTER TABLE` — add, modify, drop columns
- `DROP` and `TRUNCATE` statements

### DML — Data Manipulation Language
- `INSERT` — single and bulk inserts
- `UPDATE` with conditions
- `DELETE` with and without WHERE clause

### DQL — Data Query Language
- Basic `SELECT` with `WHERE`, `ORDER BY`, `LIMIT`
- Aggregate functions — `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`
- `GROUP BY` and `HAVING`
- `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`
- Subqueries and nested SELECT
- String, date, and numeric functions

---

##  Why This Matters for QA

Database validation is a critical part of testing. These skills enable:
- Verifying data persistence after form submissions
- Checking data integrity after CRUD operations
- Validating backend logic by querying the DB directly
- Writing SQL queries during regression testing and bug investigation

---

## How to Use

1. Install MySQL and MySQL Workbench (or any SQL client)
2. Open the `.sql` files in your SQL client
3. Execute scripts to create tables, insert data, and run queries

```sql
-- Example: Run DDL script
SOURCE /path/to/DDL/create_tables.sql;
```

---

## Author

**Ranjini V** — QA Automation Engineer  
[GitHub](https://github.com/Ranjini-V)

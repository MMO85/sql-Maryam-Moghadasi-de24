-----create schema named database---------
 CREATE SCHEMA IF NOT EXISTS database;

 ---information_schema is a special schema that holds metadata about the database itself----
SELECT * FROM information_schema.schemata;

-----To generate unique, auto-incrementing values for primary keys or other unique fields.-----
CREATE SEQUENCE IF NOT EXISTS id_duckdb_sequence START 1;

SELECT * FROM pg_catalog.pg_sequences;
-----creates a new table named duckdb in the database schema.-----
CREATE TABLE IF NOT EXISTS database.duckdb(
 id INTEGER DEFAULT nextval('id_duckdb_sequence'),
 word STRING,
 description STRING
);

CREATE SCHEMA IF NOT EXISTS programming;

CREATE TABLE IF NOT EXISTS database.sql (
	word STRING,
	description STRING);


CREATE TABLE IF NOT EXISTS programming.python (
	word STRING,
	description STRING);
	
CREATE TABLE IF NOT EXISTS programming.C_sharp (
	word STRING,
	description STRING);
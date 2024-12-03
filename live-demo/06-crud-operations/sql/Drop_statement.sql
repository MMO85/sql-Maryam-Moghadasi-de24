SELECT * FROM information_schema.tables;

---When you execute a DROP query, the specified object is permanently deleted from the database----
DROP TABLE database.sql;


---- It ensures that when one object is deleted, all dependent objects or records are also deleted-----
DROP SCHEMA programming CASCADE;
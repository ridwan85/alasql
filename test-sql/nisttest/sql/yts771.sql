-- MODULE  YTS771  

-- SQL Test Suite, V6.0, Interactive SQL, yts771.sql
-- 59-byte ID
-- TEd Version #

-- AUTHORIZATION CTS1              

   SELECT USER FROM HU.ECCO;
-- RERUN if USER value does not match preceding AUTHORIZATION comment
   ROLLBACK WORK;

-- date_time print

-- TEST:7553 Access to CHARACTER_SETS view!

   SELECT COUNT (*)
     FROM INFORMATION_SCHEMA.CHARACTER_SETS
     WHERE CHARACTER_SET_SCHEMA = 'INFORMATION_SCHEMA'
     AND CHARACTER_SET_NAME = 'SQL_TEXT';
-- PASS:7553 If COUNT = 1?

   SELECT CHARACTER_SET_CATALOG,
     DEFAULT_COLLATE_CATALOG,
     DEFAULT_COLLATE_SCHEMA, DEFAULT_COLLATE_NAME
     FROM INFORMATION_SCHEMA.CHARACTER_SETS
     WHERE CHARACTER_SET_SCHEMA = 'INFORMATION_SCHEMA'
     AND CHARACTER_SET_NAME = 'SQL_TEXT';
-- PASS:7553 If CHARACTER_SET_CATALOG = DEFAULT_COLLATE_CATALOG?
-- PASS:7553 If DEFAULT_COLLATE_SCHEMA = INFORMATION_SCHEMA?
-- PASS:7553 If DEFAULT_COLLATE_NAME = SQL_TEXT?

   ROLLBACK WORK;

-- END TEST >>> 7553 <<< END TEST
-- *********************************************
-- *************************************************////END-OF-MODULE

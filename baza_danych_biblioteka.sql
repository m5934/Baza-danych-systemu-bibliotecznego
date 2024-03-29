-- Database: Biblioteka

-- DROP DATABASE IF EXISTS "Biblioteka";

CREATE DATABASE "Biblioteka"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Polish_Poland.1250'
    LC_CTYPE = 'Polish_Poland.1250'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

COMMENT ON DATABASE "Biblioteka"
    IS 'Baza danych do systemu bibliotecznego';
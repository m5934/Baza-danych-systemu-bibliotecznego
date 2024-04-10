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
	
CREATE TABLE IF NOT EXISTS ksiazki(
	id serial  PRIMARY KEY,
	tytuł TEXT,
	autor_id TEXT
);

CREATE TABLE IF NOT EXISTS egzemplarze(
	id  serial PRIMARY KEY,
	id_ksiazki int NOT NULL REFERENCES ksiazki (id),
	status text DEFAULT 'Dostępny' NOT NULL,
	FOREIGN KEY (id_ksiazki) REFERENCES ksiazki (id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS czytelnicy(
	id int NOT NULL PRIMARY KEY,
	imie text NOT NULL,
	nazwisko text NOT NULL,
	email text,
	telefon int,
	miasto text NOT NULL,
	kod_pocztowy text NOT NULL
);

CREATE TABLE IF NOT EXISTS autorzy(
	id int NOT NULL PRIMARY KEY,
	imie text NOT NULL,
	nazwisko text NOT NULL
);

CREATE TABLE IF NOT EXISTS zamowienia(
	id serial NOT NULL PRIMARY KEY,
	id_czytelnika int NOT NULL,
	id_egzemplarza text NOT NULL
);
	

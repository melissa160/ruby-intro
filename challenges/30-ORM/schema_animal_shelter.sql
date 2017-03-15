drop table if exists dogs;


CREATE TABLE dogs (
id integer primary key AUTOINCREMENT not null,
name VARCHAR(64),
age INTEGER,
weight INTEGER);

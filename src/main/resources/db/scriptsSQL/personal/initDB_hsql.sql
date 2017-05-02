CREATE SEQUENCE IF NOT EXISTS GLOBAL_SEQ
  AS INTEGER START WITH 1000;


CREATE TABLE IF NOT EXISTS persons
(
    id      INTEGER GENERATED BY DEFAULT AS SEQUENCE GLOBAL_SEQ  PRIMARY KEY,
  login  VARCHAR(255),
  password VARCHAR (255),
  birthdate DATE
);








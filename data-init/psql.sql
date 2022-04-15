CREATE DATABASE clientes;


\c clientes

CREATE TABLE usuarios (
    first_name varchar(100), 
    last_name varchar(100),
    email varchar(100) PRIMARY KEY
);

\copy usuarios from './data-init/usuarios_database.csv' DELIMITER ',' CSV HEADER;

ALTER TABLE usuarios ADD saldo DECIMAL CHECK (saldo >= 0);

UPDATE usuarios set saldo = 20000;
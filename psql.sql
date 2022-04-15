-- CREACION DE ROL
CREATE ROLE Fernanditox LOGIN SUPERUSER PASSWORD 'carlospro';

-- CREACION DATABASE
CREATE DATABASE banco;

--  CONEXION A DATABASE
\c banco

-- CREACION DE TABLAS
CREATE TABLE cuentas (
    id INT PRIMARY KEY,
    saldo DECIMAL CHECK (saldo >= 0)
    );


CREATE TABLE transacciones (
    id SERIAL PRIMARY KEY,
    cuenta INT REFERENCES cuentas(id),
    monto DECIMAL,
    descripcion varchar(50), 
    fecha varchar(10)
    );


-- INSERCIONES DE DATOS A TABLA CUENTAS
INSERT INTO cuentas values (1, 20000);
INSERT INTO cuentas values (2, 20000);
INSERT INTO cuentas values (3, 35000);
-- EJEMPLO COMANDO
node index.js nuevo 1 20000 'Javiera Blanco a Pablo Chulako' '14/03/2022' 3
node index.js depositar 2 3000 'Deposito 1' '15/03/2022'
node index.js retirar 2 3000 'Retiro 1' '15/03/2022'
node index.js consulta 2
node index.js id 2
-- SELECCION TABLAS
SELECT * FROM cuentas ORDER BY id ASC;

SELECT * FROM transacciones;
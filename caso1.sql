-- Creacion de base de datos
CREATE DATABASE empresa;

-- Se ingresa a la base de datos
\c empresa;



-- Creacion tabla departamentos

CREATE TABLE departamentos(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR[80]
);


-- Creacion tabla trabajadores

CREATE TABLE trabajadores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR[50],
    rut SMALLINT UNIQUE,
    departamento_id SMALLINT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos (id)

);


-- Creacion tabla liquidaciones

CREATE TABLE liquidaciones(
    id SERIAL PRIMARY KEY,
    trabajador_id SMALLINT,
    liquidacion TEXT,
    FOREIGN KEY (trabajador_id) REFERENCES trabajadores (id)
);
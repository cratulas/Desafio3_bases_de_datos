-- Creacion de base de datos
CREATE DATABASE colegio;

-- Se ingresa a la base de datos
\c colegio;


-- Creacion tabla alumnos
CREATE TABLE alumnos(
    id SERIAL PRIMARY KEY,
    rut INTEGER,
    nombre VARCHAR
);


-- Creacion tabla curso
CREATE TABLE curso(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR,
    alumnos_id SMALLINT,
    FOREIGN KEY (alumnos_id) REFERENCES alumnos (id)
);

-- Creacion tabla profesores
CREATE TABLE profesores(
    id SERIAL PRIMARY KEY,
    nombre VARCHAR,
    departamento VARCHAR
);

-- Creacion tabla prueba
CREATE TABLE prueba(
    id SERIAL PRIMARY KEY,
    puntaje SMALLINT,
    alumnos_id SMALLINT,
    profesor_id SMALLINT,
    FOREIGN KEY (alumnos_id) REFERENCES alumnos (id)
);



-- Crear la BD gestion
CREATE SCHEMA gestion 
CHARSET utf8mb4 
COLLATE utf8mb4_spanish2_ci;
-- Activar la BD
USE gestion;
-- Crear las tablas
-- Tabla departamentos
CREATE TABLE departamentos (
    idDepartamento INT AUTO_INCREMENT,
    nombreDepartamento VARCHAR(45) UNIQUE NOT NULL,
    localidadDepartamento VARCHAR(45) NOT NULL,
    PRIMARY KEY (idDepartamento)
);
-- Tabla empleados
CREATE TABLE empleados (
    idEmpleado INT AUTO_INCREMENT,
    nombreEmpleado VARCHAR(45) NOT NULL,
    apellidosEmpleado VARCHAR(45) NOT NULL,
    cargoEmpleado VARCHAR(45) NOT NULL,
    salarioEmpleado DECIMAL(7 , 2) NOT NULL,
    idDepartamentoFK INT NOT NULL,
    PRIMARY KEY (idEmpleado),
    FOREIGN KEY (idDepartamentoFK)
        REFERENCES departamentos (idDepartamento)
);
INSERT INTO departamentos VALUES (null,'VENTAS','FLORIDA');
INSERT INTO departamentos (localidadDepartamento, nombreDepartamento)
VALUES ('CHICAGO', 'CONTABILIDAD');
INSERT INTO departamentos (localidadDepartamento, nombreDepartamento)
VALUES ('CHICAGO', 'GESTIÓN');
SELECT * FROM departamentos;
DELETE FROM departamentos WHERE idDepartamento = 15;

INSERT INTO empleados VALUES(null, 'Edwards', 'Blake', 'Gerente', 9000, 3);
INSERT INTO empleados VALUES(null, 'Thomas', 'Scott', 'Analista', 4000, 3);
INSERT INTO empleados VALUES(null, 'John', 'King', 'Comercial', 2000, 1);
INSERT INTO empleados VALUES(null, 'Nuria', 'Turner', 'Contable', 1500, 2);
INSERT INTO empleados VALUES(null, 'Ellen', 'Smith', 'Contable', 1500, 2);
INSERT INTO empleados VALUES(null, 'Susan', 'Ward', 'Comercial', 2000, 1);
SELECT * FROM empleados;
-- Tabla usuarios: id, nombre, clave, tipo
CREATE TABLE usuarios (
    idUsuario INT AUTO_INCREMENT,
    nombreUsuario VARCHAR(45),
    claveUsuario VARCHAR(256),
    tipoUsuario TINYINT,
    PRIMARY KEY (idUsuario)
);
SELECT * FROM usuarios
WHERE nombreUsuario = 'admin' AND claveUsuario = SHA2('Studium2026#', 256);
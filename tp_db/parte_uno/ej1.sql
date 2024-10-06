CREATE DATABASE IF NOT EXISTS ortiz_ceballos_java;

USE ortiz_ceballos_java;

-- Creacion de la tabla Empleados
CREATE TABLE IF NOT EXISTS Empleados (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    fecha_nacimiento DATE,
    puesto VARCHAR(50),
    salario DECIMAL(10.2)
);
-- Insercion de datos a la tabla empleados
INSERT INTO Empleados (id, nombre, apellido, fecha_nacimiento, puesto, salario) VALUES
(1, 'Juan', 'Pérez', '1985-05-15', 'Desarrollador', 50000.00),
(2, 'María', 'Gómez', '1990-08-22', 'Analista', 45000.00),
(3, 'Carlos', 'Rodríguez', '1982-03-10', 'Gerente', 70000.00),
(4, 'Laura', 'Martínez', '1995-11-05', 'Diseñador', 40000.00),
(5, 'Pedro', 'López', '1988-07-18', 'Desarrollador', 55000.00);

-- 3 Seleccion de la tabla empleados
SELECT * FROM Empleados;

-- 4 Consulta con condicion
SELECT * FROM Empleados WHERE puesto = 'Desarrollador';

-- 5 Consulta con ORDER BY

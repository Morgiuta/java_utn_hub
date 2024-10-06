DROP DATABASE IF EXISTS ortiz_ceballos_db;
CREATE DATABASE IF NOT EXISTS ortiz_ceballos_db;

USE ortiz_ceballos_db;

-- Creacion de la tabla empleados
DROP TABLE IF EXISTS empleados;
CREATE TABLE IF NOT EXISTS `empleados`(
 id INTEGER AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 salario DECIMAL(10, 2) NOT NULL,
 departamento VARCHAR(50) NOT NULL,
 fecha_contratacion DATE NOT NULL,
 jefe_id INT,
 FOREIGN KEY (jefe_id) REFERENCES empleados(id)
); 

INSERT INTO empleados (nombre, salario, departamento, fecha_contratacion, jefe_id)
VALUES
('Juan Pérez', 55000, 'Ventas', '2021-01-01', NULL),
('María López', 45000, 'Marketing', '2020-05-15', NULL),
('Carlos Gómez', 60000, 'Ingeniería', '2019-08-20', NULL),
('Ana Rodríguez', 35000, 'Recursos Humanos', '2022-03-10', NULL),
('Luis Martínez', 50000, 'Ventas', '2021-06-01', 1),
('Laura García', 40000, 'Marketing', '2020-11-20', 2),
('Pedro Sánchez', 65000, 'Ingeniería', '2018-07-15', 3),
('Sofía Fernández', 30000, 'Recursos Humanos', '2022-09-05', 4);

-- Creacion de la tabla proveedores
DROP TABLE IF EXISTS proveedores;
CREATE TABLE IF NOT EXISTS proveedores(
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    telefono INT NOT NULL,
    mail VARCHAR(50)
);

INSERT INTO proveedores (nombre, telefono, mail) VALUES
('Proveedor A', 123456, NULL),
('Proveedor B', 234561, 'proveedorB@gmail.com'),
('Proveedro C', 345612, NULL),
('Proveedor D', 456123, 'provedorD@gmial.com');

-- Creacion de la tabla productos
DROP TABLE IF EXISTS productos;
CREATE TABLE IF NOT EXISTS productos (
 id INTEGER AUTO_INCREMENT PRIMARY KEY,
 nombre VARCHAR(100) NOT NULL,
 precio DECIMAL(10, 2) NOT NULL,
 categoria VARCHAR(50) NOT NULL,
 fecha_lanzamiento DATE NOT NULL,
 proveedor_id INT,
 FOREIGN KEY (proveedor_id) REFERENCES proveedores(id)
);

-- INSERCION DE DATOS
INSERT INTO productos (nombre, precio, categoria, fecha_lanzamiento,
proveedor_id)
VALUES
('Laptop', 1200.00, 'Electrónica', '2021-01-01', NULL),
('Smartphone', 800.00, 'Electrónica', '2020-05-15', NULL),
('Cafetera', 50.00, 'Hogar', '2019-08-20', NULL),
('Libro', 20.00, 'Libros', '2022-03-10', NULL),
('Tablet', 300.00, 'Electrónica', '2021-06-01', 1),
('Aspiradora', 150.00, 'Hogar', '2020-11-20', 2),
('Monitor', 250.00, 'Electrónica', '2018-07-15', 3),
('Juego de Mesa', 30.00, 'Juegos', '2022-09-05', 4);


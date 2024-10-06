USE ortiz_ceballos_java;

### Ejercicio 21: Creación de una Tabla
CREATE TABLE IF NOT EXISTS Clientes(
	id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email varchar(50),
    fecha_registro DATE
);

### Ejercicio 22: Inserción de Datos
INSERT INTO Clientes (nombre, apellido, email, fecha_registro) VALUES
('Ana', 'García', 'ana.garcia@example.com', '2022-01-10'),
('Luis', 'Fernández', 'luis.fernandez@example.com', '2022-02-15'),
('Sofía', 'Ramírez', 'sofia.ramirez@example.com', '2022-03-20'),
('Diego', 'Sánchez', 'diego.sanchez@example.com', '2022-04-25'),
('Elena', 'Pérez', 'elena.perez@example.com', '2022-05-30');

### Ejercicio 23: Consulta Básica
SELECT * FROM Clientes;

### Ejercicio 24: Consulta con Condición
SELECT * FROM Clientes WHERE fecha_registro > '2022-01-01';

### Ejercicio 25: Consulta con ORDER BY
SELECT * FROM Clientes ORDER BY fecha_registro DESC;

### Ejercicio 26: Consulta con DISTINCT
SELECT DISTINCT email FROM Clientes;

### Ejercicio 27: Consulta con WHERE y AND
SELECT * FROM Clientes WHERE fecha_registro > '2022-01-01' AND apellido = 'Garcia';

### Ejercicio 28: Consulta con BETWEEN
SELECT * FROM Clientes WHERE fecha_registro BETWEEN '2022-01-01' AND '2022-12-31';

### Ejercicio 29: Consulta con LIKE
SELECT * FROM Clientes WHERE nombre LIKE 'A%';

### Ejercicio 30: Consulta con IN
SELECT * FROM Clientes WHERE apellido IN ('García', 'Fernández');
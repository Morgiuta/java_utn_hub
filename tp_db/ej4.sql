USE oritz_ceballos_java;

### Ejercicio 31: Creación de una Tabla
DROP TABLE IF EXISTS Ventas;

CREATE TABLE IF NOT EXISTS Ventas (
	id INT PRIMARY KEY AUTO_INCREMENT,
    fecha DATE,
    cliente_id INT,
    producto_id INT,
    cantidad INT,
    total DECIMAL(10.2)
);

INSERT INTO Ventas (fecha, cliente_id, producto_id, cantidad, total) VALUES
('2023-01-10', 1, 1, 2, 2000.00),
('2023-01-15', 2, 2, 1, 500.00),
('2023-01-20', 3, 3, 3, 60.00),
('2023-01-25', 4, 4, 2, 30.00),
('2023-01-30', 5, 5, 5, 25.00);

### Ejercicio 33: Consulta Básica
SELECT * FROM Ventas;

### Ejercicio 34: Consulta con Condición
SELECT * FROM Ventas WHERE fecha > '2023-01-01';

### Ejercicio 35: Consulta con ORDER BY
SELECT * FROM Ventas ORDER BY fecha ASC;

### Ejercicio 36: Consulta con DISTINCT
SELECT DISTINCT cliente_id FROM Ventas;

### Ejercicio 37: Consulta con WHERE y AND
SELECT * FROM Ventas WHERE fecha > '2023-01-01' AND total > 100;

### Ejercicio 37: Consulta con WHERE y AND
SELECT * FROM Ventas WHERE fecha BETWEEN '2023-01-01' AND  '2023-01-31';

### Ejercicio 39: Consulta con LIKE
SELECT * FROM Ventas WHERE fecha LIKE '2023-01%';

### Ejercicio 40: Consulta con IN
SELECT * FROM Ventas WHERE cliente_id IN (1, 2);

USE ortiz_ceballos_java;

### Ejercicio 11: Creación de una Tabla
CREATE TABLE IF NOT EXISTS Productos (
	productos_id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10.2),
    stock INT
);

### Ejercicio 12: Inserción da Datos
INSERT INTO Productos (nombre, categoria, precio, stock) VALUES
('Arduino', 'electronica', 20000.00, 25),
('Genius', 'mouse', 10000.00, 30),
('LG', 'monitor', 15000.00, 15),
('Galaxy A2', 'celular', 56000.00, 55),
('Iphone 13', 'celular', 70000.00, 35);


### Ejercicio 13: Consulta Básica
SELECT * FROM Productos;

### Ejercicio 14: Consulta con Condición
SELECT * FROM Productos WHERE categoria = 'electronica'; 

### Ejercicio 15: Consulta con ORDER BY
SELECT * FROM ortiz_ceballos_java.Productos ORDER BY precio ASC;

### Ejercicio 16: Consulta con DISTINCT
SELECT DISTINCT categoria FROM ortiz_ceballos_java.Productos;

### Ejercicio 17: Consulta con WHERE y AND
SELECT * from Productos WHERE categoria = 'electronica' AND precio > 50;

### Ejercicio 18: Consulta con BETWEEN
SELECT * FROM Productos WHERE precio BETWEEN 10 AND 100;

### Ejercicio 19: Consulta con LIKE
SELECT * FROM Productos WHERE categoria LIKE  'Camiseta';

### Ejercicio 20: Consulta con IN
SELECT * FROM Productos WHERE categoria IN ('electronica', 'ropa')

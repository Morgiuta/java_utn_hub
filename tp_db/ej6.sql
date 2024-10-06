USE ortiz_ceballos_db;

-- 3 Escribe una consulta SQL que seleccione todos los productos cuyo precio
--   sea mayor a 200.00 y pertenezcan a la categoría 'Electrónica', o cuyo
-- 	 precio sea menor a 50.00 y pertenezcan a la categoría 'Hogar';
SELECT 
    *
FROM
    productos
WHERE
    precio > 200.00
        AND categoria = 'Electronica'
        OR precio < 50.00 AND categoria = 'Hogar';


-- 4 Escribe una consulta SQL que calcule el precio promedio de los
--   productos agrupados por categoría y que solo muestre las categorías
--   cuyo precio promedio sea mayor a 100.00.
SELECT 
    categoria, AVG(precio) AS promedio_precio
FROM
    productos
GROUP BY categoria
HAVING AVG(precio) > 100.00;


-- 5 Escribe una consulta SQL que seleccione todos los productos y los
--   ordene en orden descendente por precio y en orden ascendente por
--   nombre.
SELECT 
    *
FROM
    productos
ORDER BY precio DESC , nombre ASC;

-- 6 Escribe una consulta SQL que actualice el precio de todos los productos
--   de la categoría 'Electrónica' que fueron lanzados después del 1 de enero
--   de 2020, incrementando su precio en un 10%
SET SQL_SAFE_UPDATES = 0;
UPDATE productos 
SET 
    precio = precio * 1.10
WHERE
    categoria = 'Electronica'
        AND fecha_lanzamiento > '2020-01-01';
SET SQL_SAFE_UPDATES = 1;

-- 7 Escribe una consulta SQL que elimine todos los productos de la categoría
-- 'Libros' que fueron lanzados antes del 1 de enero de 2020.
SET SQL_SAFE_UPDATES = 0;
DELETE FROM productos 
WHERE
    categoria = 'Libros'
    AND fecha_lanzamiento < '2020-01-01';
SET SQL_SAFE_UPDATES = 1;

-- 8 Escribe una consulta SQL que seleccione el nombre y el precio de los
--   productos cuyo precio sea mayor que el promedio de precios de todos los
--   productos.
SELECT 
    nombre, precio
FROM
    productos
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos);

-- 9 Escribe una consulta SQL que seleccione el nombre y el precio de los
--   productos cuyo precio sea mayor que el promedio de precios de todos los
--   productos.
SELECT 
	nombre
,   precio
,	RANK() OVER (ORDER BY precio DESC) AS ranking
FROM 
	productos;

-- 10 Escribe una consulta SQL que cree una vista llamada
--    `productos_electronica` que seleccione el nombre y el precio de los
--    productos de la categoría 'Electrónica'.
CREATE VIEW productos_electronica AS
SELECT 
    nombre, precio
FROM
    productos
WHERE
    categoria = 'Electrónica';

-- 11 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de los
--    productos de la misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 12 Crar Indices
CREATE INDEX idx_categorias ON productos (categoria);

-- 13 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de todos los
--    productos.
SELECT 
    nombre, precio
FROM
    productos
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos);

-- 14 Escribe una consulta SQL que seleccione el nombre y el precio de los
-- productos cuyo precio sea mayor que el promedio de precios de los
-- productos de la misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 15 Escribe una consulta SQL que seleccione el nombre y el precio de los
--   productos cuyo precio sea mayor que el precio mínimo de los productos
--   de la misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            MIN(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 16 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el precio mínimo de los productos
--    de la misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio = (SELECT 
            MIN(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 17 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea igual al precio máximo de los productos de la
--    misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio = (SELECT 
            MAX(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 18 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea igual al precio mínimo de los productos de la
--    misma categoría.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio = (SELECT 
            MIN(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria);

-- 19 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de todos los
--    productos en la tabla.
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos);

-- 20 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de los
--    productos de una categoría específica (por ejemplo, 'Electrónica').
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos
        WHERE
            categoria = 'Electrónica');

-- 21 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de los
--    productos de la misma categoría y que hayan sido lanzados después de
--    una fecha específica (por ejemplo, '2020-01-01').
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria
                AND fecha_lanzamiento > '2020-01-01');
                
-- 22 Escribe una consulta SQL que seleccione el nombre y el precio de los
--    productos cuyo precio sea mayor que el promedio de precios de los
--    productos de la misma categoría y que tengan un proveedor asignado
--    (proveedor_id no es NULL).
SELECT 
    nombre, precio
FROM
    productos p1
WHERE
    precio > (SELECT 
            AVG(precio)
        FROM
            productos p2
        WHERE
            p1.categoria = p2.categoria
                AND proveedor_id IS NOT NULL);

-- La función COUNT() nos permite contar el número de registros que hay en una
-- tabla. Incluyendo los valores NULL, COUNT(*) o sin incluirlos en el caso
-- de COUNT(campo).
SELECT COUNT(*) AS recuento FROM proveedores;
SELECT COUNT(nombre) AS recuento FROM proveedores;

-- La función SUM() suma los valores de un campo. Por ejemplo, para conocer 
-- el total de productos vendidos en la tabla ventas:
SELECT SUM(cantidad) AS suma FROM ventas;

-- Por ejemplo, para conocer la cantidad de productos disponibles en stock
-- del proveedor 1 en la tabla productos:
SELECT SUM(disponible) AS stock FROM productos WHERE codigo_provee=1;

-- Las funciones MAX() y MIN() nos permiten saber cuál es el valor máximo
-- y mínimo respectivamente de los valores de un campo. Por ejemplo, para
-- saber cuál es el precio máximo y mínimo de los desktop de la tabla
-- productos:
SELECT MAX(precio) AS maximo, MIN(precio) AS minimo FROM productos WHERE nombre LIKE '%desktop%';

-- Finalmente, AVG() nos devuelve el promedio de los valores de un campo.
-- Por ejemplo, para saber el precio promedio de los monitores de nuestra
-- tabla productos:
SELECT AVG(precio) AS promedio FROM productos WHERE nombre LIKE '%monitor%';

-- La cláusula GROUP BY nos permite aplicar funciones de agrupación a grupos
-- de registros de una base de datos. Por ejemplo, para saber la cantidad de
-- productos que tenemos de cada proveedor, usaríamos:
SELECT codigo_provee, COUNT(*) FROM productos GROUP BY codigo_provee;

-- Para saber cuántos artículos tenemos disponibles de cada tipo:
SELECT nombre, SUM(disponible) AS stock FROM productos GROUP BY nombre;

-- Para saber cuál es el precio más caro de cada artículo de nuestra tabla
-- productos:
SELECT nombre, MAX(precio) AS precio FROM productos GROUP BY nombre;

-- Por ejemplo, para saber el precio promedio de todos los productos de mi
-- tabla productos:
SELECT nombre, AVG(precio) AS promedio FROM productos GROUP BY nombre;

-- Si ahora, queremos limitar los resultados de la consulta a sólo aquellos
-- productos que tengan un valor promedio superior a 2000, podría utilizar
-- una cláusula HAVING
SELECT nombre, AVG(precio) AS promedio FROM productos GROUP BY nombre HAVING AVG(precio) > 2000;

-- Si yo quiero conocer el listado de productos de mi tabla productos:
SELECT nombre FROM productos;

-- Si yo quisiera saber solamente los productos únicos de mi tabla utilizaría
-- la cláusula DISTINCT:
SELECT DISTINCT nombre FROM productos;

-- Lo mismo podría conseguir con un agrupamiento:
SELECT nombre FROM productos GROUP BY nombre;
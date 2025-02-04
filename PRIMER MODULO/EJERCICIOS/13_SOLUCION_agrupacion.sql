USE tienda_profesor;

-- Calcular el precio medio de los productos de cada proveedor en la tabla 
-- productos.
SELECT codigo_provee, AVG(precio) AS promedio FROM productos
	GROUP BY codigo_provee;
	
-- ¿Cuántos productos tenemos en stock de cada precio en nuestra tabla 
-- productos?
SELECT precio, SUM(disponible) AS stock FROM productos
	GROUP BY precio;
	
-- Me lo invento: stock de cada producto.
SELECT nombre, SUM(disponible) AS stock FROM productos
	GROUP BY nombre;
	
-- Si tengo poco stock de algún producto, tendría que pedir. Por ejemplo,
-- si tengo un stock menor o igual de 50.
SELECT nombre, SUM(disponible) AS stock FROM productos
	GROUP BY nombre HAVING stock<=50;
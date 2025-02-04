USE tienda_profesor;

-- Con las uniones (por ejemplo INNER JOIN) podemos consultar información
-- de varias tablas a la vez. Tenemos que especificar el campo que sirve
-- de unión entre ambas tablas. Por ejemplo, podríamos obtener información
-- sobre proveedores y productos al mismo tiempo.
SELECT * FROM proveedores INNER JOIN productos ON
	proveedores.codigo=productos.codigo_provee;

-- Una pregunta habitual podría ser interesarnos por el precio de los
-- productos organizados por proveedor.
SELECT proveedores.nombre AS proveedor, productos.nombre AS producto,
	productos.precio FROM proveedores INNER JOIN productos ON
	proveedores.codigo=productos.codigo_provee;

-- Quiero conocer el precio medio de los productos de cada proveedor en
-- orden descendente de nombre del proveedor.
SELECT proveedores.nombre AS proveedor, 
	AVG(productos.precio) AS `precio medio`
	FROM proveedores INNER JOIN productos ON
	proveedores.codigo=productos.codigo_provee
	GROUP BY proveedores.nombre ORDER BY proveedores.nombre DESC;

-- ¿Y si quiero ver solamente los proveedores cuyo precio medio de los
-- productos es superior a 3000?
SELECT proveedores.nombre AS proveedor,
	AVG(productos.precio) AS `precio medio`
	FROM proveedores INNER JOIN productos ON
	proveedores.codigo=productos.codigo_provee
	GROUP BY proveedores.nombre HAVING AVG(productos.precio)>3000
	ORDER BY proveedores.nombre DESC;

-- Las uniones LEFT JOIN o RIGHT JOIN muestran todos los registros de una
-- tabla y sólo los relacionados de la otra, utilizando NULL en aquellos
-- registros donde no haya valor correspondiente. Por ejemplo, vamos a
-- plantearnos listar todos los vehículos usados y sólo los mecánicos que
-- han reparado dichos vehículos. Aquí podría haber algún vehículo que no
-- haya sido reparado. En este caso, obtendríamos un NULL. Obsérvese
-- también que queremos mostrar matrículas de vehículos y nombres de
-- mecánicos, por lo que tenemos que hacer todo el recorrido en la BD.
USE concesionario_profesor;
SELECT coches.matricula, CONCAT(personas.nombre, ' ', personas.apellidos)
	FROM coches INNER JOIN USADOS USING(id_coche)
	LEFT JOIN mecanicos_coches USING(id_coche_usado)
	INNER JOIN mecanicos USING(id_mecanico)
	INNER JOIN personas USING(id_persona)
	ORDER BY coches.matricula;
	

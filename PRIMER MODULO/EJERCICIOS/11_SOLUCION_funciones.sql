USE tienda_profesor;

-- Crear un código de cuatro letras en mayúsculas con las primeras letras 
-- de todos los productos de la tabla productos de la base de datos tienda.
SELECT nombre FROM productos;
-- Extraer los cuatro caracteres de la izquierda del nombre.
SELECT nombre, LEFT(nombre, 4) FROM productos;
-- Pasar a mayúsculas y utilizar un alias para mejorar el nombre de la
-- columna. También podemos usar la función UPPER.
SELECT nombre, UCASE(LEFT(nombre, 4)) AS codigo FROM productos;
-- Si lo que quisiéramos es mostrar los códigos únicos que hay en la tabla,
-- podríamos utilizar la cláusula DISTINCT.
SELECT DISTINCT nombre, UCASE(LEFT(nombre, 4)) AS codigo FROM productos;

-- Crear un saludo para todos los empleados de la tabla empleados del tipo 
-- "Bienvenido nombreempleado".
SELECT nombre, apellido FROM empleados;
-- Concatenar nombre, apellido y el texto de bienvenida. Añadimos un alias
-- para el saludo.
SELECT nombre, apellido, 
	CONCAT('Bienvenido ',nombre,' ',apellido) AS saludo
	FROM empleados;
	
-- En la tabla proveedores, cambiar el texto "C/" de las calles de las 
-- direcciones por "calle".
SELECT direccion FROM proveedores;
-- Sustituir C/ por Calle y ver el resultado.
SELECT direccion, REPLACE(direccion,'C/','Calle') FROM proveedores;
-- Actualizar la tabla para reflejar el cambio.
UPDATE proveedores SET direccion=REPLACE(direccion,'C/','Calle');
SELECT direccion FROM proveedores;

-- En la tabla ventas, calcular el importe de cada venta y aplicarle un 
-- redondeo a un entero. 
SELECT precio, cantidad FROM ventas;
-- Calculo el importe.
SELECT precio, cantidad, precio*cantidad AS importe FROM ventas;
-- Redondeamos a un entero.
SELECT precio, cantidad, ROUND(precio*cantidad) AS importe FROM ventas;

-- Mostrar el año de la fecha correspondiente a sumar seis meses a la 
-- fecha actual.
-- Muestro la fecha actual.
SELECT CURRENT_DATE();
-- Le tengo que sumar seis meses a esta fecha.
SELECT DATE_ADD(CURRENT_DATE(), interval 6 MONTH);
-- Extraer el año. Tenemos varias opciones: ¿LEFT? ya que la fecha se
-- escribe como texto. YEAR. EXTRACT.
SELECT YEAR(DATE_ADD(CURRENT_DATE(), interval 6 MONTH)) AS año;
-- Eliminar la BD si ya existe.
DROP DATABASE IF EXISTS tienda_profesor;

-- Por convención, los comandos de SQL se escriben en mayúsculas.
-- CREATE DATABASE sirve para crear una base de datos en el servidor.
-- A continuación de los comandos escribimos el nombre de la base de datos.
CREATE DATABASE tienda_profesor;

-- Mostrar un listado de las bases de datos del servidor.
SHOW DATABASES;

-- Seleccionar la BD para trabajar con ella.
USE tienda_profesor;

-- Para crear una tabla debemos especificar su nombre y su lista de campos
-- incluyendo nombre de campo, tipo de datos y tamaño entre paréntesis si
-- procede.
CREATE TABLE empleados ( 
	cedula INT(8), 
	nombre VARCHAR(30), 
	apellido VARCHAR(30), 
	cargo VARCHAR(30), 
	tiempo_servicio INT 
);

-- Mostrar las tablas en la BD actual.
SHOW TABLES;

-- Mostrar la estructura de la tabla.
DESCRIBE empleados;

-- Para eliminar una tabla.
DROP TABLE empleados;

-- La cláusula IF EXISTS permite que la sentencia no genere error si no
-- puede eliminar la tabla.
DROP TABLE IF EXISTS empleados;

-- Recreamos la tabla que hemos borrado.
CREATE TABLE empleados ( 
	cedula INT(8), 
	nombre VARCHAR(30), 
	apellido VARCHAR(30), 
	cargo VARCHAR(30), 
	tiempo_servicio INT 
);

-- Para borrar columnas de una tabla existente utilizamos ALTER TABLE con
-- la cláusula DROP COLUMN.
ALTER TABLE empleados
	DROP COLUMN tiempo_servicio,
	DROP COLUMN apellido;
	
-- Comprobar que las columnas se han borrado efectivamente.
DESCRIBE empleados;

-- Renombramos una columna con CHANGE, especificando el campo que queremos
-- cambiar y su nuevo nombre, tipo de datos y tamaño.
ALTER TABLE empleados CHANGE cargo cargo_em VARCHAR(30);
ALTER TABLE empleados CHANGE cargo_em cargo VARCHAR(30);

-- Cambiar el tipo de datos sin cambiar el nombre del campo. Como vemos
-- aquí, se pueden especificar además los atributos del campo. En este
-- caso, indicamos que el campo no admite nulos.
ALTER TABLE empleados MODIFY cargo_em INT NOT NULL;

-- Añadir un campo a la tabla especificando en la cláusula ADD el nombre
-- y el nuevo tipo de datos.
ALTER TABLE empleados ADD tiempo_servicio INT;
ALTER TABLE empleados ADD apellido VARCHAR(30) NOT NULL AFTER nombre;

-- Renombrar una tabla.
ALTER TABLE empleados RENAME empleado;
ALTER TABLE empleado RENAME empleados;

-- Para insertar un nuevo registro, utilizaremos INSERT INTO, especificando
-- la lista de campos a actualizar, la palabra clave VALUES y la lista de
-- valores que quremos incorporar a cada campo.
INSERT INTO empleados 
	(cedula, nombre, apellido, cargo, tiempo_servicio) 
	VALUES (20345666,'Mario','Perez','Administrador',4);
	
INSERT INTO empleados
	(cedula, nombre, apellido, cargo, tiempo_servicio)
	VALUES (12345678,'Julio','Iglesias','Cantante',6);

-- Para ver o recuperar los registros de una tabla utilizamos el comando
-- SELECT
SELECT cedula, nombre, apellido, cargo, tiempo_servicio FROM empleados;
-- Cuando queremos mostrar todos los campos podemos sustituir la lista
-- por un asterisco.
SELECT * FROM empleados;
-- También podemos especificar solamente la lista de campos que quremos
-- visualizar.
SELECT nombre, apellido FROM empleados;

-- Con la cláusula WHERE podemos filtrar los registros que queremos ver
-- con SELECT. Especificaremos una condición. Los registros que cumplan
-- dicha condición se mostrarán y los que no, no.
SELECT nombre, apellido, cargo FROM empleados WHERE nombre='Mario';
SELECT nombre, apellido, tiempo_servicio FROM empleados 
	WHERE tiempo_servicio > 5;
	
-- DELETE FROM empleados; borra TODOS los registros de la tabla.
-- Si queremos filtrar los registros que vamos a eliminar, usaremos como
-- antes una cláusula WHERE.
INSERT INTO empleados
	(cedula, nombre, apellido, cargo, tiempo_servicio)
	VALUES (87654321,'Diego','Maradona','Delantero',3);
DELETE FROM empleados WHERE nombre='Diego';

-- Para actualizar los valores de una tabla usamos el comando UPDATE y
-- la cláusula SET para indicar el nuevo valor del campo. Si queremos
-- filtrar los registros que van a modificarse, usamos una cláusula
-- WHERE.
UPDATE empleados SET tiempo_servicio=5 WHERE nombre='Mario';
UPDATE empleados SET nombre='Marcelo', tiempo_servicio=7 
	WHERE nombre='Mario';

-- Para añadir un campo clave principal a una tabla escribimos PRIMARY
-- KEY y el nombre del campo al final de la lista.
DROP TABLE IF EXISTS empleados;
CREATE TABLE empleados ( 
	cedula INT(8), 
	nombre VARCHAR(30), 
	apellido VARCHAR(30), 
	cargo VARCHAR(30), 
	tiempo_servicio INT, 
	PRIMARY KEY(cedula) 
);
DESCRIBE empleados;

-- Podemos insertar más de un registro a la vez especificando sus valores
-- tras VALUES y separando todos los conjuntos por comas.
INSERT INTO empleados (cedula, nombre, apellido, cargo, tiempo_servicio) 
	VALUES (15856345,'Leonardo','Martinez','vendedor',6), 
	(13789123,'Jose','Bracho','Auxiliar',1), 
	(17321906,'Ana','Alvarado','Gerente',8);
	
-- Añadiendo AUTO_INCREMENT a un campo de la tabla durante su creación,
-- lo establecemos como autoincremental. Este campo debe ser entero y ser
-- clave principal.
CREATE TABLE proveedores( 
	codigo INT AUTO_INCREMENT, 
	nombre VARCHAR(20) NOT NULL, 
	direccion VARCHAR(50),
	pago FLOAT DEFAULT 100, 
	PRIMARY KEY(codigo) 
);

-- Si no especificamos el campo codigo se crea un valor autoincremental.
INSERT INTO proveedores (nombre, direccion, pago) 
	VALUES ('provee1','Porlamar', 3000);

-- Aunque podemos escribir manualmente el valor para el campo.
INSERT INTO proveedores (codigo, nombre, direccion, pago) 
	VALUES (6, 'provee2','Caracas', 34.56);
	
-- ************************ EJERCICIOS *******************************

-- Con sentencias ALTER TABLE, especificar que todos los campos de la tabla 
-- empleados deben ser NOT NULL.
ALTER TABLE empleados MODIFY nombre VARCHAR(30) NOT NULL;
ALTER TABLE empleados MODIFY apellido VARCHAR(30) NOT NULL;
ALTER TABLE empleados MODIFY cargo VARCHAR(30) NOT NULL;
ALTER TABLE empleados MODIFY tiempo_servicio INT NOT NULL;

-- Insertar un nuevo registro en la tabla empleados.
INSERT INTO empleados (cedula, nombre, apellido, cargo, tiempo_servicio)
	VALUES(66655544,'Fulgencio','García','Vendedor', 3),
	(11122233,'Manolo','Tería','Gerente',10);
	
-- Mostrar los registros de la tabla empleados que tengan un tiempo de 
-- servicio igual a tres.
SELECT * FROM empleados WHERE tiempo_servicio=3;

-- Borrar el registro que acabáis de insertar utilizando una cláusula 
-- WHERE.
DELETE FROM empleados WHERE cedula=66655544;

-- Actualizar todos los campos tiempo_servicio de todos los registros de 
-- la tabla empleados añadiéndoles un año.
UPDATE empleados SET tiempo_servicio=tiempo_servicio+1;

-- *******************************************************************

-- Creamos una nueva tabla para hacer relaciones entre proveedores ya
-- productos.
CREATE TABLE productos (
	codigo_p INT AUTO_INCREMENT, 
	codigo_provee INT, 
	nombre VARCHAR(40), 
	precio FLOAT UNSIGNED, 
	disponible INT, 
	PRIMARY KEY(codigo_p), 
	FOREIGN KEY(codigo_provee) REFERENCES proveedores(codigo) 
		ON DELETE CASCADE ON UPDATE CASCADE
);

-- Insertamos algunos proveedores.
INSERT INTO proveedores 
	(nombre, direccion, pago) VALUES 
	('Empresa XYZ','Porlamar', 3000);
	
INSERT INTO proveedores
	(codigo, nombre, direccion, pago) VALUES
	(50, 'Chocolates el Loro', 'C/ Falsa, 123', 5000);
	
INSERT INTO proveedores 
	(nombre, direccion, pago) VALUES 
	('Cuesta Mucho','C/ Felicidad 6', 8000);

-- Insertamos algunos productos.
INSERT INTO productos (codigo_provee, nombre, precio) 
	VALUES (1, 'desktop', 3000), 
	(1, 'desktop', 4500), 
	(50, 'laptop', 3000), 
	(51, 'laptop', 5000), 
	(50, 'teclado', 500), 
	(51, 'mouse', 300), 
	(50, 'desktop', 5000), 
	(6, 'desktop', 3200), 
	(1, 'Monitor', 1000), 
	(7, 'Monitor', 2000), 
	(1, 'impresora', 3000),
	(7, 'impresora', 5000);

-- TRUNCATE TABLE elimina todos los registros de una tabla y es más rápido
-- que hacerlo con el comando DELETE. Pero no podemos borrar los registros
-- por que hay una referencia externa con la tabla productos. Esto
-- violaría la integridad referencial. No sucede así con DELETE, ya que
-- tenemos activada la regla ON DELETE CASCADE y con el borrado de los
-- registros de proveedores, también se borrarán los de productos.
-- TRUNCATE TABLE proveedores;
-- DELETE FROM proveedores;

-- Insertamos un valor NULL en la tabla proveedores;
INSERT INTO proveedores (nombre, direccion, pago) 
	VALUES ('provee3', 'La Asuncion', NULL);
	
-- Para recuperar los registros que tienen un valor NULL en un campo.
SELECT * FROM proveedores WHERE pago IS NULL;
-- Los que no tienen un valor NULL.
SELECT * FROM proveedores WHERE pago IS NOT NULL;

-- Si omitimos un campo que tiene un valor DEFAULT en su definición, se
-- aplica automáticamente dicho valor. Si el campo es autoincremental,
-- se crea el siguiente número de la lista.
INSERT INTO proveedores (nombre, direccion) 
	VALUES ('Empresa Falsa', 'C/ Verdadera, 321');
	
-- Los campos calculados no tienen por qué almacenarse en la BD. Se pueden
-- calcular sobre la marcha. La cláusula AS permite establecer un nombre
-- para una columna calculada.
CREATE TABLE ventas (
	codigo INT,
	fecha DATE,
	precio FLOAT(6,2),
	cantidad INT,
	PRIMARY KEY(codigo)
);

INSERT INTO ventas
	(codigo, fecha, precio, cantidad) VALUES
	(1234, '2022-03-29', 100.50, 7),
	(1235, '2022-03-29', 50.99, 3),
	(1236, '2022-03-30', 150.25, 16);
	
SELECT fecha, precio, cantidad, precio*cantidad AS importe FROM ventas;

-- Vamos a crear valores aleatorios para la columna disponible de la tabla
-- productos.
-- Aleatorio entre 0 y 1.
SELECT RAND();
-- Aleatorio entre un mínimo y un máximo.
-- FLOOR(RAND()*(max-min + 1)) + min
SELECT FLOOR(RAND()*(100-10 + 1)) + 10;
-- Actualizamos todos los campos disponible de la tabla con valores
-- aleatorios.
UPDATE productos SET disponible=FLOOR(RAND()*(100-10 + 1)) + 10;
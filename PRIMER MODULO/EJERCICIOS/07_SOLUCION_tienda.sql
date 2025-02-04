USE tienda_profesor;

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
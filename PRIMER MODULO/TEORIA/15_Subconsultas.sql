USE concesionario_profesor;

-- Consulta para calcular el salario medio de mis mecánicos.
SELECT AVG(salario) FROM mecanicos;

-- Una consulta que nos muestre los nombres de los mecánicos y su salario.
SELECT personas.nombre, mecanicos.salario 
	FROM personas INNER JOIN mecanicos USING(id_persona);
	
-- Ahora, una consulta para saber qué mecánicos ganan más de 1152 euros
-- que es el salario medio de todos los trabajadores.
SELECT personas.nombre, mecanicos.salario 
	FROM personas INNER JOIN mecanicos USING(id_persona)
	WHERE mecanicos.salario > 1152;
	
-- Pero no es aceptable que tengamos que introducir manualmente el valor
-- promedio de salarios. Podemos automatizarlo con una subconsulta. La 
-- subconsulta se introduce entre paréntesis.
SELECT personas.nombre, mecanicos.salario 
	FROM personas INNER JOIN mecanicos USING(id_persona)
	WHERE mecanicos.salario > (SELECT AVG(salario) FROM mecanicos);
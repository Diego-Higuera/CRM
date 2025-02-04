USE tienda_profesor;

-- Pegar o concatenar dos o más cadenas de carcteres.
SELECT CONCAT('Hola', ' ', '¿cómo estás?') AS saludo;
-- También podemos trabajar con campos existentes en una tabla.
SELECT nombre, apellido, CONCAT(apellido, ', ', nombre) AS completo
	FROM empleados;
SELECT precio, cantidad, 
	CONCAT('Importe final: ', precio*cantidad, ' euros') AS importe
	FROM ventas WHERE precio*cantidad>500;

-- Longitud de una cadenas
SELECT nombre, LENGTH(nombre) AS longitud FROM empleados;

-- Localizar la posición en la que aparece una subcadena dentro de una
-- cadena.
SELECT LOCATE('sol', 'Los solteros solemos soldar solos.');

-- Rellenar una cadena con caracteres hasta una longitud determinada.
SELECT LPAD('Hola',10,'*');

-- Extraer una subcadena con los primeros o los últimos x caracteres.
SELECT LEFT('supercalifragilisticoespialidoso',10),
	RIGHT('supercalifragilisticoespialidoso',10);

-- Extraer una subcadena de cualquier posición y longitud.
SELECT SUBSTRING('supercalifragilisticoespialidoso',5,10);

-- Eliminar espacios innecesarios el principio, al final o en ambos lados.
SELECT '   Hola   ', LTRIM('   Hola   ');

-- Reemplazar un fragmento de texto por otro en una cadena.
SELECT REPLACE('Los solteros solemos soldar solos','sol','astro');

-- Repetir n veces una cadena de caracteres.
SELECT REPEAT('monja',6);

-- Escribir una cadena del revés.
SELECT REVERSE('dabalearrozalazorraelabad');
SELECT REVERSE('soy reversible');

-- Insertar un fragmento de texto en reemplazo de un cacho de una cadena.
SELECT INSERT('Tengo una muñeca vestida de azul',11,6,'***');

-- Pasar una cadena a minúsculas o mayúsculas.
SELECT LCASE('TenGO unA MUÑeca VEStiDA de aZuL');
SELECT UCASE('TenGO unA MUÑeca VEStiDA de aZuL');

-- Comparación de cadenas. La búsqueda y la sustitución es por defecto
-- case insensitive (insensible a mayúsculas o minúsculas).
SELECT STRCMP('ratón','elefante');
SELECT STRCMP('RATÓN','elefante');
SELECT STRCMP('ó','o');
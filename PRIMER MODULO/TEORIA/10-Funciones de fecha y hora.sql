USE tienda_profesor;

-- Obtener la fecha actual. El formato es año-mes-día.
SELECT CURRENT_DATE();

-- Obtener la hora actual.
SELECT CURRENT_TIME();

-- Obtener la fecha y hora actuales.
SELECT NOW();

-- Añadir un intervalo de tiempo a una fecha.
SELECT DATE_ADD('2024/10/12', interval 15 day);
SELECT DATE_ADD(CURRENT_DATE(), interval 3 month);
SELECT DATE_ADD(CURRENT_DATE(), interval -1 month);

-- Restar un intervalo de tiempo a una fecha.
SELECT DATE_SUB('2024.10.10 14:24:35', interval 10 minute);

-- Diferencia en días entre dos fechas.
SELECT DATEDIFF('2024-12-25',CURRENT_DATE);

-- Obtener distintos fragmentos de una fecha.
SELECT DAYNAME(CURRENT_DATE()),
	   DAYOFMONTH(CURRENT_DATE()),
	   DAYOFWEEK(CURRENT_DATE()),
	   DAYOFYEAR(CURRENT_DATE());
	   
-- Extraer un componente de una fecha indicando qué tipo de componente
-- se trata.
SELECT EXTRACT(YEAR FROM CURRENT_DATE()),
       EXTRACT(MONTH FROM CURRENT_DATE()),
	   EXTRACT(DAY FROM CURRENT_DATE());

-- Extractos de fecha y hora.
SELECT HOUR('14:37:50'),
       MINUTE('14:37:50'),
	   SECOND('14:37:50'),
	   MONTHNAME(CURRENT_DATE()),
	   MONTH(CURRENT_DATE()),
	   YEAR(CURRENT_DATE()),
	   DAY(CURRENT_DATE(),
	   WEEKDAY(CURRENT_DATE());

-- Convertir un argumento en segundos a formato de hora.
SELECT SEC_TO_TIME(3661);

-- Convertir una hora a segundos.
SELECT TIME_TO_SEC('01:01:01');

-- Diferencia en horas, minutos y segundos entre dos horas.
SELECT TIMEDIFF('09:18:00', '15:00:00');

-- Devuelve el número de días desde el año 0.
SELECT TO_DAYS(CURRENT_DATE());
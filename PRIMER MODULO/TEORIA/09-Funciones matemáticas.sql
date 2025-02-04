USE tienda_profesor;

-- Todas las operaciones matemáticas devuelven NULL en caso de error.
SELECT 5/0;

-- El valor absoluto es el número prescindiendo del signo.
SELECT ABS(-5);

-- Redondear a un entero hacia arriba o hacia abajo.
SELECT CEILING(7.89), FLOOR(7.89);
SELECT CEILING(-7.89), FLOOR(-7.89);

-- Redondear al entero más cercano.
SELECT ROUND(7.89), ROUND(7.33);
SELECT ROUND(7.5), ROUND(7.499999);
SELECT ROUND(-7.89), ROUND(-7.33);
SELECT ROUND(-7.5), ROUND(-7.499999);

-- Mayor valor y menor valor de una lista de valores. Debe haber al menos
-- dos parámetros para hacer el cálculo.
SELECT GREATEST(7,15,2), LEAST(7,15,2);

-- Resto de una división entera. Puede servir, por ejemplo, para saber
-- si un número es par o impar.
SELECT MOD(73,2); -- Es impar
SELECT 73%2;

-- Cálculo de una potencia. Elevar un número a otro.
SELECT POWER(2,3);

-- Aleatorio entre 0 y 1.0 (no incluido).
SELECT RAND();

-- Raíz cuadrada de un número.
SELECT SQRT(9);

-- Truncar un número con una cantidad dada de decimales.
SELECT TRUNCATE(123.45678,2), TRUNCATE(123.45678,0);
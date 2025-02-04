Algoritmo sumas
	
	// Declaraciones.
	Definir numeroSuma Como Entero
	
	// Pedimos inicialmente un número.
	Escribir "Introduce un número para sumar (0 para salir)"
	Leer numeroSuma
	
	// Inicializamos el sumatorio.
	suma <- 0
	
	// Mientras el número sea distinto de cero, seguimos sumando.
	Mientras numeroSuma <> 0 Hacer
		// Hacemos la suma.
		suma <- suma + numeroSuma
		// Mostramos el resultado parcial.
		Escribir "Hasta ahora la suma es: ", suma
		// Pedimos un nuevo número.
		Escribir "Introduce otro número para sumar (0 para salir)"
		Leer numeroSuma
	Fin Mientras
	Escribir "Eso es to, eso es to, eso es todo amigos"
	
	// En realidad, este no es el método adecuado para resolver este problema.
	// Como mínimo, debe chirriarnos que el número se pida fuera y dentro del
	// bucle.
	
FinAlgoritmo

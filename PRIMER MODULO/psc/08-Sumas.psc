Algoritmo sumas
	
	// Declaraciones.
	Definir numeroSuma Como Entero
	
	// Pedimos inicialmente un n�mero.
	Escribir "Introduce un n�mero para sumar (0 para salir)"
	Leer numeroSuma
	
	// Inicializamos el sumatorio.
	suma <- 0
	
	// Mientras el n�mero sea distinto de cero, seguimos sumando.
	Mientras numeroSuma <> 0 Hacer
		// Hacemos la suma.
		suma <- suma + numeroSuma
		// Mostramos el resultado parcial.
		Escribir "Hasta ahora la suma es: ", suma
		// Pedimos un nuevo n�mero.
		Escribir "Introduce otro n�mero para sumar (0 para salir)"
		Leer numeroSuma
	Fin Mientras
	Escribir "Eso es to, eso es to, eso es todo amigos"
	
	// En realidad, este no es el m�todo adecuado para resolver este problema.
	// Como m�nimo, debe chirriarnos que el n�mero se pida fuera y dentro del
	// bucle.
	
FinAlgoritmo

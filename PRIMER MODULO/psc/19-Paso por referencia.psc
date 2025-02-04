Algoritmo PasoPorReferencia
	
	Definir x Como Entero
	
	x <- 16
	
	Escribir "Sumar dos: ", sumarDos(x)
	Escribir "X: ", x
	
	Escribir "Por referencia: ", sumarDosPorReferencia(x)
	Escribir "X: ", x
	
FinAlgoritmo

Funcion resultado <- sumarDos(x)
	
	x <- x + 2
	
	resultado <- x
	
FinFuncion

Funcion resultado <- sumarDosPorReferencia(x Por Referencia)
	
	x <- x + 2
	
	resultado <- x
	
FinFuncion

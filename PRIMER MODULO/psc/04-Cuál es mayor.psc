Algoritmo cualEsMayor
	
	// Declaraci�n de variables.
	Definir primerNumero, segundoNumero Como Entero
	
	// Pedir dos n�meros.
	Escribir "Dime un n�mero"
	Leer primerNumero
	Escribir "Dime otro n�mero distinto"
	Leer segundoNumero
	
	// Vemos si el primer n�mero es mayor.
	Si primerNumero > segundoNumero Entonces
		Escribir "El primer n�mero es mayor"
	SiNo
		Escribir "El segundo n�mero es mayor"
	Fin Si
	
	// Pero, aunque estemos pidiendo expl�citamente n�meros distintos, el 
	// programa falla si el usuario introduce dos n�meros iguales.
	Si primerNumero > segundoNumero Entonces
		Escribir "El primer n�mero es mayor"
	SiNo
		Si segundoNumero > primerNumero Entonces
			Escribir "El segundo n�mero es mayor"
		SiNo
			Escribir "Ambos n�meros son iguales, �tramposo!"
		Fin Si
	Fin Si
	
FinAlgoritmo

Algoritmo cualEsMayor
	
	// Declaración de variables.
	Definir primerNumero, segundoNumero Como Entero
	
	// Pedir dos números.
	Escribir "Dime un número"
	Leer primerNumero
	Escribir "Dime otro número distinto"
	Leer segundoNumero
	
	// Vemos si el primer número es mayor.
	Si primerNumero > segundoNumero Entonces
		Escribir "El primer número es mayor"
	SiNo
		Escribir "El segundo número es mayor"
	Fin Si
	
	// Pero, aunque estemos pidiendo explícitamente números distintos, el 
	// programa falla si el usuario introduce dos números iguales.
	Si primerNumero > segundoNumero Entonces
		Escribir "El primer número es mayor"
	SiNo
		Si segundoNumero > primerNumero Entonces
			Escribir "El segundo número es mayor"
		SiNo
			Escribir "Ambos números son iguales, ¡tramposo!"
		Fin Si
	Fin Si
	
FinAlgoritmo

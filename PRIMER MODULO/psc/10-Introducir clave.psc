Algoritmo introducirClave
	
	// Declaraciones.
	Definir clave Como Caracter
	
	// Pedir al usuario una contrase�a hasta que sea 1234 (al menos una vez).
	Repetir
		Escribir "Introduce la contrase�a"
		Leer clave
		Si clave<>"1234" Entonces
			Escribir "La clave no es correcta. Int�ntalo de nuevo"
		Fin Si
	Hasta Que clave="1234"
	Escribir "Bienvenido al sistema"
	
FinAlgoritmo

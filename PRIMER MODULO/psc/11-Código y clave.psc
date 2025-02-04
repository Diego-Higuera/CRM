Algoritmo codigoClave
	
	// 7.1: Crea un programa que pida al usuario un código de usuario y una
	// contraseña. Deberá repetirse hasta que el código sea "1" y la 
	// contraseña sea "1234".
	
	// Declaraciones
	Definir codigo, clave Como Caracter
	
	Repetir
		Escribir "Introduce el código"
		Leer codigo
		Escribir "Introduce la clave"
		Leer clave
		Si codigo<>"1" O clave<>"1234" Entonces
			Escribir "El código o la clave son incorrectos"
		Fin Si
	Hasta Que codigo="1" Y clave="1234"
	Escribir "Bienvenido al sistema"
	
FinAlgoritmo

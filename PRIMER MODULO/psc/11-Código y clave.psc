Algoritmo codigoClave
	
	// 7.1: Crea un programa que pida al usuario un c�digo de usuario y una
	// contrase�a. Deber� repetirse hasta que el c�digo sea "1" y la 
	// contrase�a sea "1234".
	
	// Declaraciones
	Definir codigo, clave Como Caracter
	
	Repetir
		Escribir "Introduce el c�digo"
		Leer codigo
		Escribir "Introduce la clave"
		Leer clave
		Si codigo<>"1" O clave<>"1234" Entonces
			Escribir "El c�digo o la clave son incorrectos"
		Fin Si
	Hasta Que codigo="1" Y clave="1234"
	Escribir "Bienvenido al sistema"
	
FinAlgoritmo

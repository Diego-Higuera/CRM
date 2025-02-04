Algoritmo sumaAzar
	
	// 6.1: Crea un programa que genere dos n�meros al azar entre el 0 y el 100, y
	// pida al usuario que calcule e introduzca su suma. Si la respuesta no es correcta, 
	// deber� volver a pedirla tantas veces como sea necesario hasta que el usuario 
	// acierte.
	// Pista: como ver�s en el apartado 10, para generar un n�mero al azar del 0 al 100 
	// puedes hacer numero <- AZAR(101)
	
	// Declaraciones.
	Definir azar1, azar2 Como Entero
	Definir  suma Como Entero
	
	// Generamos dos n�meros al azar.
	azar1 <- AZAR(101)
	azar2 <- AZAR(101)
	// Tenemos que mostrar los numeros en pantalla para que el usuario pueda sumarlos.
	Escribir "Los n�meros aleatorios son: ", azar1, " y ", azar2
	
	// Pedimos al usuario que calcule e introduzca la suma.
	Escribir "Calcula e introduce la suma de ambos n�meros"
	Leer suma
	
	// Comprobamos si la suma es correcta y repetimos mientras no lo sea.
	Mientras suma <> azar1 + azar2 Hacer
		// Mensaje de suma incorrecta.
		Escribir "La suma no es correcta. Vuelve a intentarlo"
		Escribir "Calcula e introduce la suma de ambos n�meros"
		Leer suma
	Fin Mientras
	
	Escribir "Fant�stico. La suma es correcta"
	
FinAlgoritmo

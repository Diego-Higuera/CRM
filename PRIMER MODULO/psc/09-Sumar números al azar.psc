Algoritmo sumaAzar
	
	// 6.1: Crea un programa que genere dos números al azar entre el 0 y el 100, y
	// pida al usuario que calcule e introduzca su suma. Si la respuesta no es correcta, 
	// deberá volver a pedirla tantas veces como sea necesario hasta que el usuario 
	// acierte.
	// Pista: como verás en el apartado 10, para generar un número al azar del 0 al 100 
	// puedes hacer numero <- AZAR(101)
	
	// Declaraciones.
	Definir azar1, azar2 Como Entero
	Definir  suma Como Entero
	
	// Generamos dos números al azar.
	azar1 <- AZAR(101)
	azar2 <- AZAR(101)
	// Tenemos que mostrar los numeros en pantalla para que el usuario pueda sumarlos.
	Escribir "Los números aleatorios son: ", azar1, " y ", azar2
	
	// Pedimos al usuario que calcule e introduzca la suma.
	Escribir "Calcula e introduce la suma de ambos números"
	Leer suma
	
	// Comprobamos si la suma es correcta y repetimos mientras no lo sea.
	Mientras suma <> azar1 + azar2 Hacer
		// Mensaje de suma incorrecta.
		Escribir "La suma no es correcta. Vuelve a intentarlo"
		Escribir "Calcula e introduce la suma de ambos números"
		Leer suma
	Fin Mientras
	
	Escribir "Fantástico. La suma es correcta"
	
FinAlgoritmo
